<?php
namespace W3TC;

if ( !defined( 'W3TC' ) )
	die();
?>
<form class="w3tc_popup_form">
	<?php
if ( isset( $details['error_message'] ) )
	echo '<div class="error">' . $details['error_message'] . '</div>';
?>
	<div class="metabox-holder">
		<?php Util_Ui::postbox_header(
	__( 'Your StackPath Account credentials', 'w3-total-cache' ) ); ?>
		<table class="form-table">
			<tr>
				<td>API Key:</td>
				<td>
					<input name="api_key" type="text" class="w3tc-ignore-change"
						style="width: 550px"
						value="<?php echo esc_attr( $details['api_key'] ) ?>" />
					<p class="description">
						To obtain API key you can
						<a target="_blank" href="<?php echo esc_attr( $url_obtain_key ) ?>">click here</a>,
						log in, and paste the key in above field.
					</p>
				</td>
			</tr>
		</table>

		<p class="submit">
			<input type="button"
				class="w3tc_cdn_stackpath_fsd_list_zones w3tc-button-save button-primary"
				value="<?php _e( 'Next', 'w3-total-cache' ); ?>" />
		</p>
		<?php Util_Ui::postbox_footer(); ?>
	</div>
</form>
