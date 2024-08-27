/* To avoid CSS expressions while still supporting IE 7 and IE 6, use this script */
/* The script tag referencing this file must be placed before the ending body tag. */

/* Use conditional comments in order to target IE 7 and older:
	<!--[if lt IE 8]><!-->
	<script src="ie7/ie7.js"></script>
	<!--<![endif]-->
*/

(function() {
	function addIcon(el, entity) {
		var html = el.innerHTML;
		el.innerHTML = '<span style="font-family: \'ramakrsna\'">' + entity + '</span>' + html;
	}
	var icons = {
		'ram-crystals-icon1': '&#xe909;',
		'ram-idols-icon1': '&#xe90f;',
		'ram-malabracelet-icon1': '&#xe910;',
		'ram-pujaservices-icon1': '&#xe911;',
		'ram-rudraksha-icon1': '&#xe912;',
		'ram-sacredarticles-icon1': '&#xe913;',
		'ram-shivling-icon1': '&#xe914;',
		'ram-shreeyantra-icon1': '&#xe915;',
		'ram-yantra-icon1': '&#xe916;',
		'ram-idols-icon': '&#xe900;',
		'ram-mala-bracelets-icon': '&#xe901;',
		'ram-online-puja-services-icon': '&#xe902;',
		'ram-rudraksha-icon': '&#xe903;',
		'ram-sacred-articles-icon': '&#xe904;',
		'ram-shivling-icon': '&#xe905;',
		'ram-shree-yantra-icon': '&#xe906;',
		'ram-yantra-icon': '&#xe907;',
		'ram-crystals-icon': '&#xe908;',
		'0': 0
		},
		els = document.getElementsByTagName('*'),
		i, c, el;
	for (i = 0; ; i += 1) {
		el = els[i];
		if(!el) {
			break;
		}
		c = el.className;
		c = c.match(/ram-[^\s'"]+/);
		if (c && icons[c[0]]) {
			addIcon(el, icons[c[0]]);
		}
	}
}());
