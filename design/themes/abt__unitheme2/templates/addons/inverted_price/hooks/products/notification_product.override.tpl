<div class="ty-product-notification__item clearfix">
{include file="common/image.tpl" image_width="80" image_height="80" images=$product.main_pair no_ids=true class="ty-product-notification__image"}
<div class="ty-product-notification__content clearfix">
    <a href="{"products.view?product_id=`$product.product_id`"|fn_url}" class="ty-product-notification__product-name">{$product.product_id|fn_get_product_name nofilter}</a>
    {if !($settings.Checkout.allow_anonymous_shopping == "hide_price_and_add_to_cart" && !$auth.user_id)}
        <div class="ty-product-notification__price">
            {if !$hide_amount}
                <span class="none">{$product.amount}</span><span dir="{$language_direction}">&nbsp;x&nbsp;</span>{include file="common/price.tpl" value=$product.display_price + $product.tax_summary.total span_id="price_`$key`" class="none"}
            {/if}
        </div>
    {/if}
    {if $product.product_option_data}
        {include file="common/options_info.tpl" product_options=$product.product_option_data}
    {/if}
</div>
</div>