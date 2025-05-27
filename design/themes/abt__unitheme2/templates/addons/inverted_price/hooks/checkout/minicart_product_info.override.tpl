{if $block.properties.products_links_type == "thumb"}
    <div class="ty-cart-items__list-item-image">
        <a href="{"products.view?product_id=`$product.product_id`"|fn_url}">
            {include file="common/image.tpl" image_width="40" image_height="40" images=$product.main_pair no_ids=true lazy_load=false}
        </a>
    </div>
{/if}
<div class="ty-cart-items__list-item-desc">
    <a href="{"products.view?product_id=`$product.product_id`"|fn_url}">{$product.product|default:fn_get_product_name($product.product_id) nofilter}</a>
    <p>
        <span>{$product.amount}</span><span>&nbsp;x&nbsp;</span>{include file="common/price.tpl" value=$product.display_price + $product.tax_summary.total span_id="price_`$key`_`$dropdown_id`" class="none"}
    </p>
</div>
{if $block.properties.display_delete_icons == "YesNo::YES"|enum}
    <div class="ty-cart-items__list-item-tools">
        {if (!$runtime.checkout || $force_items_deletion) && !$product.extra.exclude_from_calculate}
            {include file="buttons/button.tpl" but_href="checkout.delete.from_status?cart_id=`$key`&redirect_url=`$r_url`" but_meta="cm-ajax cm-ajax-full-render" but_target_id="cart_content*,cart_icon*" but_role="delete" but_name="delete_cart_item"}
        {/if}
    </div>
{/if}