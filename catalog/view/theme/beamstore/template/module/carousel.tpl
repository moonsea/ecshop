            <div class="jcarousel-wrapper">
                <div class="jcarousel">
                    <ul>
                    	<?php foreach ($banners as $banner) { ?>
                        <li><a href="<?php echo $banner['link']; ?>"><img src="<?php echo $banner['image']; ?>" alt="<?php echo $banner['title']; ?>" title="<?php echo $banner['title']; ?>" /></a></li>
                        <?php } ?>
                    </ul>
                </div>

                <a href="#" class="jcarousel-control-prev"></a>
                <a href="#" class="jcarousel-control-next"></a>
            </div>