<?php 

class WPUM_Pagination {
	
	protected $_first_page;
	protected $_current_page = 1;
	protected $_total_items = 0;
	protected $_items_per_page = 25;
	protected $_total_pages;
	protected $_previous_page;
	protected $_next_page;
	protected $_offset = 0;
	protected $_url;

	public function __construct($params)
	{
		if(!empty($params))
		{
			foreach($params as $key => $value)
			{
				$key = '_'.$key;
				
				if(isset($this->$key))
				{
					$this->$key = $value;
				}
			}
		}
		
		if(isset($_GET['page_number']) AND ctype_digit($_GET['page_number']))
		{
			$this->_current_page = (int) $_GET['page_number'];
		}
		
		$this->_total_pages = (int) ceil($this->_total_items / $this->_items_per_page);
		$this->_current_page = (int) min(max(1, $this->_current_page), max(1, $this->_total_pages));
		$this->_previous_page = ($this->_current_page > 1) ? $this->_current_page - 1 : FALSE;
		$this->_first_page = ($this->_current_page === 1) ? false : 1;
		$this->_next_page = ($this->_current_page < $this->_total_pages) ? $this->_current_page + 1 : FALSE;
		$this->_last_page = ($this->_current_page >= $this->_total_pages) ? FALSE : $this->_total_pages;
		$this->_offset = (int) (($this->_current_page - 1) * $this->_items_per_page);
	}

	public function render()
	{
		if ($this->_total_pages <= 1)
		{
			return '';
		}
        
        ob_start();
?>
        <div class="tablenav bottom">
            <div class="tablenav-pages">
                <a href="<?php echo $this->url($this->first_page);?>" title="Go to the first page" class="first-page <?php if($this->first_page == false) echo 'disabled';?>">&lt;&lt;</a>
                <a href="<?php echo $this->url($this->previous_page);?>" title="Go to the previous page" class="first-page <?php if($this->previous_page == false) echo 'disabled';?>">&lt;</a>
                <span class="paging-input"><?php echo $this->current_page;?> of <span class="total-pages"><?php echo $this->total_pages;?></span></span>
                <a href="<?php echo $this->url($this->next_page);?>" title="Go to the next page" class="next-page <?php if($this->next_page == false) echo 'disabled';?>">&gt;</a>
                <a href="<?php echo $this->url($this->last_page);?>" title="Go to the last page" class="last-page <?php if($this->last_page == false) echo 'disabled';?>">&gt;&gt;</a>
            </div>
        </div>
<?php
        return ob_get_clean();
	}
	
	public function url($page)
	{
		return $this->_url.'?'.http_build_query(array_merge($_GET, array('page_number'=>$page)));
	}
    
	public function __get($key)
	{
		$key = '_'.$key;
		
		return isset($this->$key) ? $this->$key : NULL;
	}
}
?>