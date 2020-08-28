<?php
use oat\tao\helpers\Template;
?>
<header class="section-header flex-container-full">
    <h2><?=get_data('formTitle')?></h2>
    <?php if(has_data('updatedAt')) : ?>
        <p><?=__('Last updated on %2s', tao_helpers_Date::displayeDate(get_data('updatedAt')))?></p>
    <?php endif; ?>
</header>
<div class="main-container flex-container-main-form">
    <?php if(has_data('lockDate')) : ?>
        <div id="lock-box"
            data-id="<?= get_data('id') ?>"
            data-msg="<?= __('You checked out this test %2s ago', tao_helpers_Date::displayInterval(get_data('lockDate'), tao_helpers_Date::FORMAT_INTERVAL_SHORT)) ?>"></div>
    <?php endif; ?>
    <div class="form-content">
        <?=get_data('myForm')?>
    </div>
</div>

<?php Template::inc('footer.tpl', 'tao'); ?>

<script type="text/javascript">
    requirejs.config({
        config: {
            'taoTests/controller/tests/editTest' : {
                'isPreviewEnabled' : <?= json_encode(get_data('isPreviewEnabled')) ?>
            }
        }
    });
</script>