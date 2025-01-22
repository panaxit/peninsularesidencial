<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns="http://www.w3.org/1999/xhtml" xmlns:state="http://panax.io/state" xmlns:session="http://panax.io/session">
	<xsl:param name="state:desarrollo">(xover.site.seed || '').replace(/^#/,'')</xsl:param>
	<xsl:param name="session:status"></xsl:param>
	<xsl:param name="session:user_login"></xsl:param>
	<xsl:template match="/">
		<div class="draggable" style=" width: 100px;
            height: 100vh;
            width: 100vw;
            position: absolute;
            top: 0;
            left: 0;
            cursor: grab;
            user-select: none;
            transition: transform 0.1s ease-out; ">
			<script type="text/javascript" defer="defer" src="../../../loteador/jquery.maphilight.js"></script>
			<script type="text/javascript" defer="defer" src="../../../loteador/mapselection.js?v={$state:desarrollo}_20250121">loteador.inicializar()</script>
			<style>
				<![CDATA[#Mapa .map {
	background: url('../assets/desarrollos/]]><xsl:value-of select="$state:desarrollo"/><![CDATA[/loteador.png');
	background-size: 100%;
	background-repeat: no-repeat;
	width: 100%;
}]]>
			</style>
			<script defer="">
				<![CDATA[ 
		draggableDiv = document.querySelector('.draggable');
        let isDragging = false;
        let startX, startY, initialX = 0, initialY = 0;
        let currentX = 0, currentY = 0;

        draggableDiv.addEventListener('mousedown', (e) => {
            e.preventDefault();
            isDragging = true;
            startX = e.clientX - currentX;
            startY = e.clientY - currentY;

            draggableDiv.style.cursor = 'grabbing';
            requestAnimationFrame(updatePosition);
        });

        document.addEventListener('mousemove', (e) => {
            if (isDragging) {
                currentX = e.clientX - startX;
                currentY = e.clientY - startY;
            }
        });

        document.addEventListener('mouseup', () => {
            isDragging = false;
            draggableDiv.style.cursor = 'grab';
        });

        function updatePosition() {
            if (isDragging) {
                draggableDiv.style.transform = `translate(${currentX}px, ${currentY}px)`;
                requestAnimationFrame(updatePosition);
            }
        }]]>
			</script>
			<img id="masterplan" src="../assets/desarrollos/{$state:desarrollo}/loteador.jpg" orgwidth="3117" width="4382" border="0" usemap="#map" class="map" />
			<map name="map">
				<area shape="poly" coords="2242,819,2188,868,2083,752,2153,687,2165,686,2178,691" alt="L15" target="peninsula_400" href="#" />
				<area shape="poly" coords="2187,867,2083,752,2028,803,2134,920" alt="L14" target="peninsula_402" href="#" />
				<area shape="poly" coords="2134,918,2028,802,1972,850,2079,969" alt="L13" target="peninsula_404" href="#" />
				<area shape="poly" coords="2079,969,1972,851,1919,901,2023,1018" alt="L12" target="peninsula_406" href="#" />
				<area shape="poly" coords="2023,1018,1918,899,1864,950,1967,1066" alt="L11" target="peninsula_408" href="#" />
				<area shape="poly" coords="1967,1066,1863,950,1809,999,1913,1118" alt="L10" target="peninsula_410" href="#" />
				<area shape="poly" coords="1913,1118,1808,999,1752,1051,1857,1165" alt="L9" target="peninsula_412" href="#" />
				<area shape="poly" coords="1857,1165,1752,1050,1697,1099,1803,1217" alt="L8" target="peninsula_414" href="#" />
				<area shape="poly" coords="1802,1215,1697,1098,1642,1148,1746,1265" alt="L7" target="peninsula_416" href="#" />
				<area shape="poly" coords="1746,1265,1643,1149,1586,1197,1691,1314" alt="L6" target="peninsula_418" href="#" />
				<area shape="poly" coords="1691,1314,1586,1196,1531,1246,1636,1364" alt="L5" target="peninsula_420" href="#" />
				<area shape="poly" coords="1636,1364,1530,1246,1475,1296,1581,1414" alt="L4" target="peninsula_422" href="#" />
				<area shape="poly" coords="1580,1413,1475,1296,1424,1343,1421,1346,1526,1464" alt="L3" target="peninsula_424" href="#" />
				<area shape="poly" coords="1525,1462,1421,1346,1409,1362,1375,1428,1460,1522" alt="L2" target="peninsula_426" href="#" />
				<area shape="poly" coords="1459,1522,1376,1428,1232,1726" alt="L1" target="peninsula_428" href="#" />
				<area shape="poly" coords="2019,657,1873,577,1836,611,1941,728" alt="L8" target="peninsula_401" href="#" />
				<area shape="poly" coords="1836,611,1941,728,1886,778,1782,661" alt="L7" target="peninsula_403" href="#" />
				<area shape="poly" coords="1782,661,1885,777,1830,828,1725,710" alt="L6" target="peninsula_405" href="#" />
				<area shape="poly" coords="1725,710,1831,827,1775,877,1670,760" alt="L5" target="peninsula_407" href="#" />
				<area shape="poly" coords="1670,760,1775,876,1720,926,1615,809" alt="L4" target="peninsula_409" href="#" />
				<area shape="poly" coords="1615,809,1720,926,1665,976,1560,859" alt="L3" target="peninsula_411" href="#" />
				<area shape="poly" coords="1560,859,1664,975,1610,1025,1507,910,1511,902" alt="L2" target="peninsula_413" href="#" />
				<area shape="poly" coords="1507,910,1610,1026,1547,1082,1467,991" alt="L1" target="peninsula_415" href="#" />
				<area shape="poly" coords="1511,901,1634,657,1728,708" alt="L16" target="peninsula_615" href="#" />
				<area shape="poly" coords="1728,708,1634,656,1680,566,1810,636" alt="L15" target="peninsula_613" href="#" />
				<area shape="poly" coords="1810,636,1873,578,1718,491,1680,566" alt="L14" target="peninsula_611" href="#" />
				<area shape="poly" coords="1718,491,1778,371,1784,365,1795,361,1805,360,1858,388,1783,526" alt="L13" target="peninsula_597" href="#" />
				<area shape="poly" coords="1783,526,1860,389,1924,425,1848,563" alt="L12" target="peninsula_595" href="#" />
				<area shape="poly" coords="1848,563,1924,424,1989,461,1913,599" alt="L11" target="peninsula_593" href="#" />
				<area shape="poly" coords="1913,599,1988,461,2055,497,1978,634" alt="L10" target="peninsula_591" href="#" />
				<area shape="poly" coords="1978,634,2054,497,2069,505,2080,514,2089,523,2102,543,2106,555,2107,565,2105,578,2095,592,2020,658" alt="L9" target="peninsula_589" href="#" />
				<area shape="poly" coords="2242,819,2307,943,2308,953,2307,963,2303,973,2262,1013,2157,896" alt="L16" target="peninsula_567" href="#" />
				<area shape="poly" coords="2157,896,2262,1013,2207,1063,2102,946" alt="L17" target="peninsula_565" href="#" />
				<area shape="poly" coords="2102,946,2207,1063,2152,1112,2047,995" alt="L18" target="peninsula_563" href="#" />
				<area shape="poly" coords="2047,995,2152,1112,2096,1162,1992,1045" alt="L19" target="peninsula_561" href="#" />
				<area shape="poly" coords="1992,1045,2096,1161,2041,1212,1937,1095" alt="L20" target="peninsula_559" href="#" />
				<area shape="poly" coords="1937,1095,2041,1211,1986,1262,1882,1144" alt="L21" target="peninsula_557" href="#" />
				<area shape="poly" coords="1883,1144,1986,1261,1930,1310,1826,1194" alt="L22" target="peninsula_555" href="#" />
				<area shape="poly" coords="1826,1194,1931,1310,1876,1360,1771,1243" alt="L23" target="peninsula_553" href="#" />
				<area shape="poly" coords="1771,1243,1876,1360,1821,1409,1715,1292" alt="L24" target="peninsula_551" href="#" />
				<area shape="poly" coords="1715,1292,1820,1409,1765,1459,1659,1341" alt="L25" target="peninsula_549" href="#" />
				<area shape="poly" coords="1660,1342,1765,1458,1710,1509,1605,1391" alt="L26" target="peninsula_547" href="#" />
				<area shape="poly" coords="1605,1391,1710,1508,1654,1559,1549,1441" alt="L27" target="peninsula_545" href="#" />
				<area shape="poly" coords="1549,1441,1654,1559,1599,1608,1495,1491" alt="L28" target="peninsula_543" href="#" />
				<area shape="poly" coords="1495,1491,1600,1607,1544,1657,1439,1540" alt="L29" target="peninsula_607" href="#" />
				<area shape="poly" coords="1439,1540,1544,1657,1489,1706,1385,1590" alt="L30" target="peninsula_605" href="#" />
				<area shape="poly" coords="1384,1589,1489,1706,1434,1756,1329,1639" alt="L31" target="peninsula_603" href="#" />
				<area shape="poly" coords="1329,1639,1434,1756,1371,1811,1360,1815,1346,1815,1239,1763,1231,1751,1228,1736,1233,1726" alt="L32" target="peninsula_601" href="#" />
				<area shape="poly" coords="1486,1859,1483,1866,1483,1874,1485,1884,1598,1940,1611,1943,1623,1943,1634,1937,1681,1896,1576,1778" alt="L1" target="peninsula_538" href="#" />
				<area shape="poly" coords="1681,1896,1575,1778,1631,1729,1737,1846" alt="L2" target="peninsula_540" href="#" />
				<area shape="poly" coords="1737,1846,1792,1796,1686,1680,1631,1729" alt="L3" target="peninsula_542" href="#" />
				<area shape="poly" coords="1791,1797,1686,1679,1741,1630,1847,1747" alt="L4" target="peninsula_544" href="#" />
				<area shape="poly" coords="1846,1748,1741,1629,1797,1580,1902,1698" alt="L5" target="peninsula_546" href="#" />
				<area shape="poly" coords="1902,1698,1797,1581,1852,1530,1957,1649" alt="L6" target="peninsula_548" href="&quot;" />
				<area shape="poly" coords="1957,1649,1852,1531,1907,1481,2012,1599" alt="L7" target="peninsula_550" href="#" />
				<area shape="poly" coords="2012,1599,1907,1481,1962,1431,2068,1550" alt="L8" target="peninsula_552" href="#" />
				<area shape="poly" coords="2068,1550,1963,1432,2018,1382,2123,1500" alt="L9" target="peninsula_554" href="#" />
				<area shape="poly" coords="2123,1500,2017,1382,2072,1332,2178,1450" alt="L10" target="peninsula_556" href="#" />
				<area shape="poly" coords="2177,1450,2072,1332,2128,1283,2234,1401" alt="L11" target="peninsula_558" href="#" />
				<area shape="poly" coords="2234,1401,2128,1283,2183,1234,2289,1351" alt="L12" target="peninsula_560" href="#" />
				<area shape="poly" coords="2288,1351,2183,1234,2238,1184,2344,1301" alt="L13" target="peninsula_562" href="#" />
				<area shape="poly" coords="2344,1301,2238,1184,2294,1134,2399,1252" alt="L14" target="peninsula_564"  nohref="nohref" />
				<area shape="poly" coords="2398,1252,2293,1134,2348,1085,2454,1202" alt="L15" target="peninsula_566" href="#" />
				<area shape="poly" coords="2453,1202,2349,1085,2403,1036,2509,1153" alt="L16" target="peninsula_568" href="#" />
				<area shape="poly" coords="2519,1143,2415,1026,2455,989,2652,1025" alt="L26" target="peninsula_570" href="#" />
				<area shape="poly" coords="2652,1025,2454,989,2430,938,2571,868" alt="L25" target="peninsula_572" href="#" />
				<area shape="poly" coords="2571,868,2430,939,2396,873,2537,801" alt="L24" target="peninsula_574" href="#" />
				<area shape="poly" coords="2537,801,2396,874,2362,807,2502,735" alt="L23" target="peninsula_576" href="#" />
				<area shape="poly" coords="2502,735,2363,807,2328,741,2469,670" alt="L22" target="peninsula_578" href="#" />
				<area shape="poly" coords="2469,670,2328,741,2294,675,2435,604" alt="L21" target="peninsula_580" href="#" />
				<area shape="poly" coords="2434,604,2294,676,2260,609,2401,538" alt="L20" target="peninsula_582" href="#" />
				<area shape="poly" coords="2401,538,2260,610,2226,543,2367,471" alt="L19" target="peninsula_584" href="#" />
				<area shape="poly" coords="2367,471,2226,544,2193,478,2333,405" alt="L18" target="peninsula_586" href="#" />
				<area shape="poly" coords="2333,405,2193,478,2180,454,2172,442,2161,431,2147,421,2120,406,2195,268,2289,319" alt="L16" target="peninsula_588" href="#" />
				<area shape="poly" coords="2195,268,2120,406,2055,370,2131,232" alt="L16" target="peninsula_590" href="#" />
				<area shape="poly" coords="2131,232,2055,371,1990,334,2066,196" alt="L15" target="peninsula_592" href="#" />
				<area shape="poly" coords="2066,196,1990,334,1925,298,2001,160" alt="L14" target="peninsula_594" href="#" />
				<area shape="poly" coords="2001,160,1925,298,1875,270,1870,263,1864,254,1936,124" alt="L13" target="peninsula_596" href="#" />
				<area shape="poly" coords="1936,124,1864,254,1862,248,1860,240,1859,221,1856,203,1847,184,1832,164,1817,152,1802,144,1794,140,1829,76,1909,109" alt="L12" target="peninsula_598" href="#" />
				<area shape="poly" coords="1830,76,1650,1,1719,145,1733,139,1750,136,1770,135,1785,137,1795,141" alt="L11" target="peninsula_600" href="#" />
				<area shape="poly" coords="1719,145,1650,1,1583,144,1675,190,1684,173,1702,156" alt="L10" target="peninsula_602" href="#" />
				<area shape="poly" coords="1584,144,1544,227,1681,297,1681,287,1675,274,1670,263,1666,246,1665,230,1667,211,1671,198,1675,190" alt="L9" target="peninsula_604" href="#" />
				<area shape="poly" coords="1681,296,1543,227,1512,295,1656,367,1680,320,1683,306" alt="L8" target="peninsula_606" href="#" />
				<area shape="poly" coords="1656,367,1512,294,1479,362,1623,433" alt="L7" target="peninsula_608" href="#" />
				<area shape="poly" coords="1623,433,1479,361,1448,429,1589,499" alt="L6" target="peninsula_610" href="#" />
				<area shape="poly" coords="1588,499,1447,427,1415,495,1556,566" alt="L5" target="peninsula_612" href="#" />
				<area shape="poly" coords="1415,495,1555,565,1522,632,1379,560,1404,511,1407,511" alt="L4" target="peninsula_614" href="#" />
				<area shape="poly" coords="1379,560,1522,631,1489,698,1347,627" alt="L3" target="peninsula_616" href="#" />
				<area shape="poly" coords="1347,627,1489,698,1455,764,1315,693" alt="L2" target="peninsula_618" href="#" />
				<area shape="poly" coords="1315,693,1456,765,1412,852,1366,829,1354,792,1284,757" alt="L1" target="peninsula_620" href="#" />
				<area shape="poly" coords="1144,1289,1266,1350,1273,1360,1275,1369,1275,1379,1253,1427,1112,1356" alt="L30" target="peninsula_622" href="#" />
				<area shape="poly" coords="1111,1356,1253,1427,1220,1494,1080,1423" alt="L29" target="peninsula_624" href="#" />
				<area shape="poly" coords="1080,1423,1220,1493,1188,1560,1047,1490" alt="L28" target="peninsula_626" href="#" />
				<area shape="poly" coords="1047,1490,1188,1560,1156,1628,1015,1556" alt="L27" target="peninsula_628" href="#" />
				<area shape="poly" coords="1015,1556,1157,1628,1123,1694,983,1623" alt="L26" target="peninsula_630" href="#" />
				<area shape="poly" coords="982,1623,1124,1694,1090,1760,950,1689" alt="L25" target="peninsula_632" href="#" />
				<area shape="poly" coords="950,1689,1091,1760,1057,1827,917,1756" alt="L24" target="peninsula_634" href="#" />
				<area shape="poly" coords="917,1756,1059,1827,1025,1894,884,1823" alt="L23" target="peninsula_636" href="#" />
				<area shape="poly" coords="884,1823,1025,1893,992,1961,852,1888" alt="L22" target="peninsula_638" href="#" />
				<area shape="poly" coords="851,1888,992,1960,959,2027,818,1956" alt="L21" target="peninsula_640" href="#" />
				<area shape="poly" coords="818,1956,959,2026,926,2093,785,2023" alt="L20" target="peninsula_642" href="#" />
				<area shape="poly" coords="785,2022,926,2092,893,2159,752,2088" alt="L19" target="peninsula_644" href="#" />
				<area shape="poly" coords="752,2088,892,2158,859,2226,719,2153" alt="L18" target="peninsula_646" href="#" />
				<area shape="poly" coords="719,2153,859,2225,826,2292,685,2221" alt="L17" target="peninsula_648" href="#" />
				<area shape="poly" coords="685,2221,826,2292,793,2358,652,2287" alt="L16" target="peninsula_650" href="#" />
				<area shape="poly" coords="618,2353,760,2424,726,2490,586,2420" alt="L15" target="peninsula_652" href="#" />
				<area shape="poly" coords="586,2420,726,2490,693,2557,552,2486" alt="L14" target="peninsula_654" href="#" />
				<area shape="poly" coords="552,2486,693,2556,660,2623,519,2553" alt="L13" target="peninsula_656" href="#" />
				<area shape="poly" coords="519,2553,659,2622,626,2689,486,2619" alt="L12" target="peninsula_658" href="#" />
				<area shape="poly" coords="486,2619,626,2689,593,2755,452,2685" alt="L11" target="peninsula_660" href="#" />
				<area shape="poly" coords="452,2685,593,2755,560,2822,419,2751" alt="L10" target="peninsula_662" href="#" />
				<area shape="poly" coords="419,2751,560,2821,527,2889,386,2818" alt="L9" target="peninsula_664" href="#" />
				<area shape="poly" coords="386,2818,527,2888,494,2954,352,2884" alt="L8" target="peninsula_666" href="#" />
				<area shape="poly" coords="352,2884,493,2954,460,3021,319,2950" alt="L7" target="peninsula_668" href="#" />
				<area shape="poly" coords="319,2950,459,3020,426,3088,286,3017" alt="L6" target="peninsula_670" href="#" />
				<area shape="poly" coords="286,3017,427,3087,393,3153,253,3083" alt="L5" target="peninsula_672" href="#" />
				<area shape="poly" coords="253,3083,394,3153,360,3220,220,3149" alt="L4" target="peninsula_674" href="#" />
				<area shape="poly" coords="220,3149,360,3219,327,3287,187,3215" alt="L3" target="peninsula_676" href="#" />
				<area shape="poly" coords="187,3215,327,3286,299,3344,103,3409,97,3393" alt="L2" target="peninsula_678" href="#" />
				<area shape="poly" coords="105,3409,299,3344,346,3366,355,3375,358,3382,359,3398,325,3470,288,3483,111,3426" alt="L1" target="peninsula_680" href="#" />
				<area shape="poly" coords="532,3256,637,3306,704,3274,724,3259,744,3235,602,3145" alt="L1" target="peninsula_934" href="#" />
				<area shape="poly" coords="602,3145,744,3236,783,3173,642,3083" alt="L2" target="peninsula_932" href="#" />
				<area shape="poly" coords="642,3083,782,3172,823,3111,682,3020" alt="L3" target="peninsula_930" href="#" />
				<area shape="poly" coords="682,3020,823,3110,862,3047,722,2958" alt="L4" target="peninsula_928" href="#" />
				<area shape="poly" coords="722,2958,862,3047,902,2986,762,2895" alt="L5" target="peninsula_926" href="#" />
				<area shape="poly" coords="762,2895,902,2985,942,2922,802,2833" alt="L6" target="peninsula_924" href="#" />
				<area shape="poly" coords="802,2833,942,2922,982,2860,841,2770" alt="L7" target="peninsula_922" href="#" />
				<area shape="poly" coords="532,3256,479,3232,570,3048,637,3090" alt="L37" target="peninsula_665" href="#" />
				<area shape="poly" coords="637,3090,570,3048,644,2902,725,2953" alt="L36" target="peninsula_663" href="#" />
				<area shape="poly" coords="725,2953,644,2902,697,2796,788,2854" alt="L35" target="peninsula_661" href="#" />
				<area shape="poly" coords="788,2853,697,2796,744,2703,844,2766" alt="L34" target="peninsula_659" href="#" />
				<area shape="poly" coords="844,2766,744,2703,788,2616,896,2685" alt="L33" target="peninsula_657" href="#" />
				<area shape="poly" coords="896,2685,788,2616,827,2537,943,2611" alt="L32" target="peninsula_655" href="#" />
				<area shape="poly" coords="942,2612,827,2537,864,2464,987,2541" alt="L31" target="peninsula_653" href="#" />
				<area shape="poly" coords="987,2541,865,2464,899,2394,1029,2476" alt="L30" target="peninsula_651" href="#" />
				<area shape="poly" coords="841,2770,982,2860,1022,2798,881,2707" alt="L8" target="peninsula_920" href="#" />
				<area shape="poly" coords="1022,2797,881,2707,921,2645,1062,2735" alt="L9" target="peninsula_918" href="#" />
				<area shape="poly" coords="1062,2735,921,2645,961,2582,1102,2672" alt="L10" target="peninsula_916" href="#" />
				<area shape="poly" coords="1102,2672,961,2582,1001,2520,1142,2610" alt="L11" target="peninsula_914" href="#" />
				<area shape="poly" coords="1142,2610,1002,2520,1040,2457,1182,2548" alt="L12" target="peninsula_912" href="#" />
				<area shape="poly" coords="1041,2458,1182,2547,1222,2485,1081,2395" alt="L13" target="peninsula_910" href="#" />
				<area shape="poly" coords="1081,2395,1221,2484,1262,2423,1120,2331" alt="L14" target="peninsula_908" href="#" />
				<area shape="poly" coords="1120,2331,1261,2422,1302,2360,1161,2270" alt="L15" target="peninsula_906" href="#" />
				<area shape="poly" coords="1161,2270,1301,2359,1342,2297,1200,2207" alt="L16" target="peninsula_904" href="#" />
				<area shape="poly" coords="1200,2207,1342,2297,1382,2234,1240,2145" alt="L17" target="peninsula_902" href="#" />
				<area shape="poly" coords="1240,2145,1381,2234,1431,2157,1280,2083" alt="L18" target="peninsula_900" href="#" />
				<area shape="poly" coords="1029,2476,899,2393,933,2327,1069,2414" alt="L29" target="peninsula_649" href="#" />
				<area shape="poly" coords="1069,2414,932,2326,966,2261,1108,2350" alt="L28" target="peninsula_647" href="#" />
				<area shape="poly" coords="1108,2350,966,2260,1000,2194,1149,2288" alt="L27" target="peninsula_645" href="#" />
				<area shape="poly" coords="1148,2289,1000,2194,1033,2128,1189,2226" alt="L26" target="peninsula_643" href="#" />
				<area shape="poly" coords="1189,2226,1033,2127,1066,2061,1228,2163" alt="L25" target="peninsula_641" href="#" />
				<area shape="poly" coords="1228,2163,1066,2061,1099,1994,1280,2083" alt="L24" target="peninsula_639" href="#" />
				<area shape="poly" coords="1099,1994,1170,2029,1240,1887,1190,1863,1182,1862,1172,1864,1162,1871" alt="L23" target="peninsula_872" href="#" />
				<area shape="poly" coords="1170,2029,1229,2058,1298,1916,1240,1887" alt="L21" target="peninsula_870" href="#" />
				<area shape="poly" coords="1229,2058,1287,2086,1356,1945,1298,1916" alt="L21" target="peninsula_868" href="#" />
				<area shape="poly" coords="1287,2086,1345,2115,1414,1974,1356,1945" alt="L20" target="peninsula_866" href="#" />
				<area shape="poly" coords="1345,2115,1430,2157,1503,2043,1504,2032,1502,2022,1493,2012,1414,1974" alt="L19" target="peninsula_864" href="#" />
				<area shape="poly" coords="538,3622,512,3615,474,3587,463,3545,503,3460,511,3453,522,3448,531,3446,583,3461" alt="L1" target="peninsula_682" href="#" />
				<area shape="poly" coords="583,3461,538,3622,610,3641,655,3481" alt="L2" target="peninsula_684" href="#" />
				<area shape="poly" coords="655,3481,610,3641,681,3660,727,3502" alt="L3" target="peninsula_686" href="#" />
				<area shape="poly" coords="727,3502,681,3660,752,3679,798,3523" alt="L4" target="peninsula_688" href="#" />
				<area shape="poly" coords="796,3523,752,3679,824,3698,869,3543" alt="L5" target="peninsula_690" href="#" />
				<area shape="poly" coords="869,3543,824,3698,896,3718,940,3563" alt="L6" target="peninsula_692" href="#" />
				<area shape="poly" coords="940,3563,896,3718,968,3736,1011,3584" alt="L7" target="peninsula_694" href="#" />
				<area shape="poly" coords="967,3736,1011,3584,1083,3605,1039,3756" alt="L8" target="peninsula_696" href="#" />
				<area shape="poly" coords="1039,3756,1083,3605,1154,3625,1111,3775" alt="L9" target="peninsula_698" href="#" />
				<area shape="poly" coords="1110,3775,1154,3625,1225,3646,1182,3794" alt="L10" target="peninsula_700" href="#" />
				<area shape="poly" coords="1182,3794,1225,3646,1296,3666,1254,3814" alt="L11" target="peninsula_702" href="#" />
				<area shape="poly" coords="816,3335,734,3373,732,3378,732,3383,736,3389,972,3457,991,3386" alt="L1" target="peninsula_936" href="#" />
				<area shape="poly" coords="991,3386,816,3335,932,3281,1015,3305" alt="L2" target="peninsula_938" href="#" />
				<area shape="poly" coords="1015,3305,971,3457,1042,3477,1086,3326" alt="L47" target="peninsula_695" href="#" />
				<area shape="poly" coords="1086,3326,1042,3478,1113,3498,1157,3346" alt="L46" target="peninsula_697" href="#" />
				<area shape="poly" coords="1157,3346,1113,3497,1184,3519,1229,3367" alt="L45" target="peninsula_699" href="#" />
				<area shape="poly" coords="1229,3367,1185,3518,1256,3539,1299,3387" alt="L44" target="peninsula_701" href="#" />
				<area shape="poly" coords="933,3281,1124,3193,1086,3326" alt="L3" target="peninsula_940" href="#" />
				<area shape="poly" coords="1086,3326,1124,3193,1137,3188,1153,3186,1166,3186,1200,3195,1157,3346" alt="L4" target="peninsula_942" href="#" />
				<area shape="poly" coords="1157,3346,1229,3367,1272,3216,1200,3195" alt="L5" target="peninsula_944" href="#" />
				<area shape="poly" coords="1228,3367,1299,3388,1343,3236,1272,3217" alt="L6" target="peninsula_946" href="#" />
				<area shape="poly" coords="1299,3388,1371,3408,1415,3257,1343,3236" alt="L7" target="peninsula_948" href="#" />
				<area shape="poly" coords="1299,3388,1256,3539,1327,3560,1371,3408" alt="L43" target="peninsula_703" href="#" />
				<area shape="poly" coords="1371,3408,1327,3560,1399,3580,1442,3429" alt="L42" target="peninsula_705" href="#" />
				<area shape="poly" coords="1442,3429,1371,3408,1414,3257,1486,3277" alt="L8" target="peninsula_950" href="#" />
				<area shape="poly" coords="1398,3580,1442,3429,1515,3449,1470,3601" alt="L41" target="peninsula_707" href="#" />
				<area shape="poly" coords="1442,3429,1513,3450,1557,3298,1486,3278" alt="L9" target="peninsula_952" href="#" />
				<area shape="poly" coords="1514,3450,1557,3298,1628,3318,1585,3470" alt="L10" target="peninsula_954" href="#" />
				<area shape="poly" coords="1585,3470,1656,3490,1700,3339,1628,3318" alt="L11" target="peninsula_956" href="#" />
				<area shape="poly" coords="1469,3156,1330,3117,1326,3111,1326,3100,1509,3016" alt="L1" target="peninsula_945" href="#" />
				<area shape="poly" coords="1509,3016,1469,3157,1540,3177,1581,3037" alt="L2" target="peninsula_947" href="#" />
				<area shape="poly" coords="1581,3037,1540,3177,1611,3198,1652,3058" alt="L3" target="peninsula_949" href="#" />
				<area shape="poly" coords="1652,3058,1612,3198,1683,3218,1723,3078" alt="L4" target="peninsula_951" href="#" />
				<area shape="poly" coords="1723,3078,1683,3218,1754,3239,1794,3098" alt="L5" target="peninsula_953" href="#" />
				<area shape="poly" coords="1794,3098,1754,3239,1825,3259,1866,3119" alt="L6" target="peninsula_955" href="#" />
				<area shape="poly" coords="1513,3450,1470,3601,1541,3621,1584,3470" alt="L40" target="peninsula_709" href="#" />
				<area shape="poly" coords="1584,3470,1656,3491,1612,3642,1541,3621" alt="L39" target="peninsula_711" href="#" />
				<area shape="poly" coords="1754,3518,1825,3540,1868,3388,1797,3367" alt="L12" target="peninsula_958" href="#" />
				<area shape="poly" coords="1825,3540,1868,3388,1940,3408,1897,3558" alt="L13" target="peninsula_960" href="#" />
				<area shape="poly" coords="1897,3558,1940,3408,2011,3429,1968,3581" alt="L14" target="peninsula_962" href="#" />
				<area shape="poly" coords="1825,3259,1865,3119,1937,3140,1897,3280" alt="L7" target="peninsula_957" href="#" />
				<area shape="poly" coords="1897,3280,1937,3140,2008,3160,1968,3300" alt="L8" target="peninsula_959" href="#" />
				<area shape="poly" coords="1754,3519,1825,3539,1781,3691,1710,3670" alt="L38" target="peninsula_713" href="#" />
				<area shape="poly" coords="1781,3691,1825,3539,1897,3558,1853,3711" alt="L37" target="peninsula_715" href="#" />
				<area shape="poly" coords="1853,3711,1897,3558,1968,3581,1924,3732" alt="L36" target="peninsula_717" href="#" />
				<area shape="poly" coords="1968,3581,2011,3429,2083,3450,2040,3601" alt="L15" target="peninsula_964" href="#" />
				<area shape="poly" coords="2008,3160,2079,3181,2039,3321,1968,3300" alt="L9" target="peninsula_961" href="#" />
				<area shape="poly" coords="2079,3181,2151,3201,2110,3342,2039,3321" alt="L10" target="peninsula_963" href="#" />
				<area shape="poly" coords="2110,3342,2151,3201,2223,3222,2182,3362" alt="L11" target="peninsula_965" href="#" />
				<area shape="poly" coords="2082,3450,2039,3602,2110,3621,2154,3470" alt="L16" target="peninsula_966" href="#" />
				<area shape="poly" coords="2154,3470,2110,3622,2182,3642,2225,3490" alt="L17" target="peninsula_968" href="#" />
				<area shape="poly" coords="1968,3581,1924,3732,1995,3752,2039,3601" alt="L35" target="peninsula_719" href="#" />
				<area shape="poly" coords="2039,3601,2110,3621,2066,3773,1995,3752" alt="L34" target="peninsula_721" href="#" />
				<area shape="poly" coords="2066,3773,2110,3621,2182,3642,2138,3794" alt="L33" target="peninsula_723" href="#" />
				<area shape="poly" coords="2182,3362,2222,3222,2293,3243,2253,3383" alt="L12" target="peninsula_967" href="#" />
				<area shape="poly" coords="2253,3383,2293,3242,2364,3263,2324,3403" alt="L13" target="peninsula_969" href="#" />
				<area shape="poly" coords="2324,3403,2364,3263,2436,3284,2396,3424" alt="L14" target="peninsula_971" href="#" />
				<area shape="poly" coords="2181,3642,2225,3490,2296,3511,2253,3662" alt="L18" target="peninsula_970" href="#" />
				<area shape="poly" coords="2254,3662,2296,3511,2368,3532,2324,3683" alt="L19" target="peninsula_972" href="#" />
				<area shape="poly" coords="2324,3683,2395,3704,2439,3553,2368,3532" alt="L20" target="peninsula_974" href="#" />
				<area shape="poly" coords="2182,3642,2138,3793,2209,3814,2253,3662" alt="L32" target="peninsula_725" href="#" />
				<area shape="poly" coords="2253,3663,2209,3813,2280,3835,2324,3683" alt="L31" target="peninsula_727" href="#" />
				<area shape="poly" coords="2324,3683,2280,3834,2351,3855,2395,3704" alt="L30" target="peninsula_729" href="#" />
				<area shape="poly" coords="2395,3704,2466,3724,2510,3573,2439,3553" alt="L21" target="peninsula_976" href="#" />
				<area shape="poly" coords="2395,3704,2351,3855,2423,3876,2467,3724" alt="L29" target="peninsula_731" href="#" />
				<area shape="poly" coords="2467,3724,2423,3875,2494,3896,2538,3745" alt="L28" target="peninsula_733" href="#" />
				<area shape="poly" coords="2538,3745,2467,3724,2509,3573,2582,3594" alt="L22" target="peninsula_978" href="#" />
				<area shape="poly" coords="2582,3594,2538,3745,2609,3765,2653,3614" alt="L23" target="peninsula_980" href="#" />
				<area shape="poly" coords="2538,3746,2494,3897,2566,3916,2609,3765" alt="L27" target="peninsula_735" href="#" />
				<area shape="poly" coords="2436,3284,2396,3424,2466,3444,2507,3304" alt="L15" target="peninsula_973" href="#" />
				<area shape="poly" coords="2507,3305,2466,3444,2539,3465,2579,3325" alt="L16" target="peninsula_975" href="#" />
				<area shape="poly" coords="2579,3325,2537,3465,2640,3494,2639,3342" alt="L17" target="peninsula_977" href="#" />
				<area shape="poly" coords="2609,3765,2653,3614,2738,3638,2738,3802" alt="L24" target="peninsula_982" href="#" />
				<area shape="poly" coords="2609,3765,2566,3916,2637,3937,2681,3786" alt="L26" target="peninsula_737" href="#" />
				<area shape="poly" coords="2681,3786,2637,3937,2739,3967,2737,3802" alt="L25" target="peninsula_739" href="#" />
				<area shape="poly" coords="2640,3494,2640,3429,2797,3429,2798,3515,2796,3521,2792,3528,2785,3531,2777,3534" alt="L18" target="peninsula_765" href="#" />
				<area shape="poly" coords="2640,3429,2797,3429,2797,3355,2640,3355" alt="L19" target="peninsula_767" href="#" />
				<area shape="poly" coords="2640,3355,2639,3280,2797,3281,2797,3355" alt="L20" target="peninsula_769" href="#" />
				<area shape="poly" coords="2639,3281,2639,3207,2796,3206,2797,3281" alt="L21" target="peninsula_771" href="#" />
				<area shape="poly" coords="2639,3207,2639,3132,2796,3132,2796,3206" alt="L22" target="peninsula_773" href="#" />
				<area shape="poly" coords="2639,3133,2639,3058,2796,3058,2797,3132" alt="L23" target="peninsula_775" href="#" />
				<area shape="poly" coords="2639,3058,2796,3058,2796,2984,2639,2984" alt="L24" target="peninsula_777" href="#" />
				<area shape="poly" coords="2639,2984,2795,2984,2796,2928,2792,2919,2783,2909,2770,2906,2638,2907" alt="L25" target="peninsula_779" href="#" />
				<area shape="poly" coords="1254,3814,1296,3667,1367,3687,1325,3837" alt="L12" target="peninsula_704" href="#" />
				<area shape="poly" coords="1325,3837,1367,3687,1439,3708,1395,3859" alt="L13" target="peninsula_706" href="#" />
				<area shape="poly" coords="1395,3859,1439,3707,1510,3729,1466,3881" alt="L14" target="peninsula_708" href="#" />
				<area shape="poly" coords="1466,3881,1510,3729,1582,3749,1537,3904" alt="L15" target="peninsula_710" href="#" />
				<area shape="poly" coords="1634,3934,1679,3777,1751,3798,1705,3956" alt="L16" target="peninsula_712" href="#" />
				<area shape="poly" coords="1705,3956,1751,3798,1822,3818,1776,3979" alt="L17" target="peninsula_714" href="#" />
				<area shape="poly" coords="1776,3980,1822,3818,1894,3839,1846,4001" alt="L18" target="peninsula_716" href="#" />
				<area shape="poly" coords="1847,4000,1893,3839,1964,3859,1917,4023" alt="L19" target="peninsula_718" href="#" />
				<area shape="poly" coords="1916,4025,1964,3859,2035,3880,1988,4045" alt="L20" target="peninsula_720" href="#" />
				<area shape="poly" coords="1987,4045,2035,3880,2107,3900,2060,4064,2028,4058" alt="L21" target="peninsula_722" href="#" />
				<area shape="poly" coords="2060,4064,2107,3900,2179,3921,2133,4076" alt="L22" target="peninsula_724" href="#" />
				<area shape="poly" coords="2133,4076,2178,3921,2250,3941,2207,4090,2173,4083" alt="L23" target="peninsula_726" href="#" />
				<area shape="poly" coords="2207,4089,2249,3941,2321,3962,2279,4108" alt="L24" target="peninsula_728" href="#" />
				<area shape="poly" coords="2279,4108,2321,3963,2392,3982,2351,4125" alt="L25" target="peninsula_730" href="#" />
				<area shape="poly" coords="2351,4125,2392,3983,2462,4003,2423,4142" alt="L26" target="peninsula_732" href="#" />
				<area shape="poly" coords="2423,4142,2463,4003,2534,4024,2496,4159" alt="L27" target="peninsula_734" href="#" />
				<area shape="poly" coords="2496,4159,2534,4024,2606,4044,2567,4177" alt="L28" target="peninsula_736" href="#" />
				<area shape="poly" coords="2567,4177,2606,4044,2677,4065,2639,4199" alt="L29" target="peninsula_738" href="#" />
				<area shape="poly" coords="2639,4199,2677,4065,2748,4085,2710,4220" alt="L30" target="peninsula_740" href="#" />
				<area shape="poly" coords="2710,4220,2917,4301,2880,4222,2865,4222,2854,4220,2843,4215,2832,4209,2819,4196,2809,4185,2799,4169,2794,4158,2790,4143,2788,4131,2787,4115,2782,4102,2771,4092,2763,4088,2748,4086" alt="L31" target="peninsula_742" href="#" />
				<area shape="poly" coords="2880,4222,2898,4220,2913,4217,2927,4212,2944,4201,3063,4360,2917,4301" alt="L32" target="peninsula_744" href="#" />
				<area shape="poly" coords="2944,4201,2954,4193,2964,4180,2973,4165,2979,4150,3076,4235,3064,4361" alt="L33" target="peninsula_746" href="#" />
				<area shape="poly" coords="2979,4150,2982,4137,2981,4120,2980,4104,2977,4091,2973,4082,3078,4081,3079,4155,3083,4157,3075,4235" alt="L34" target="peninsula_748" href="#" />
				<area shape="poly" coords="2973,4083,2967,4071,2959,4060,2948,4050,2940,4043,2925,4035,2918,4028,2913,4019,2911,4011,2910,4004,3069,4002,3078,4026,3078,4082" alt="L35" target="peninsula_750" href="#" />
				<area shape="poly" coords="2910,4004,3069,4002,3067,3928,2910,3930" alt="L36" target="peninsula_752" href="#" />
				<area shape="poly" coords="2910,3930,2910,3856,3066,3854,3067,3928" alt="L37" target="peninsula_754" href="#" />
				<area shape="poly" coords="2910,3856,3066,3853,3066,3779,2910,3782" alt="L38" target="peninsula_756" href="#" />
				<area shape="poly" coords="2910,3782,2910,3707,3064,3705,3065,3779" alt="L39" target="peninsula_758" href="#" />
				<area shape="poly" coords="2910,3708,3064,3705,3063,3631,2909,3633" alt="L40" target="peninsula_760" href="#" />
				<area shape="poly" coords="2909,3633,3063,3631,3062,3557,2909,3559" alt="L41" target="peninsula_762" href="#" />
				<area shape="poly" coords="2910,3559,3062,3557,3061,3483,2909,3485" alt="L42" target="peninsula_764" href="#" />
				<area shape="poly" coords="2909,3485,3061,3483,3062,3409,2909,3411" alt="L43" target="peninsula_766" href="#" />
				<area shape="poly" coords="2909,3411,3062,3409,3064,3334,2909,3336" alt="L44" target="peninsula_768" href="#" />
				<area shape="poly" coords="2909,3336,3064,3335,3066,3260,2908,3263" alt="L45" target="peninsula_770" href="file:/#" />
				<area shape="poly" coords="2908,3263,3066,3260,3068,3186,2908,3188" alt="L46" target="peninsula_772" href="#" />
				<area shape="poly" coords="2908,3188,3068,3186,3071,3112,2908,3114" alt="L47" target="peninsula_774" href="#" />
				<area shape="poly" coords="2908,3114,3070,3112,3072,3038,2908,3040" alt="L48" target="peninsula_776" href="#" />
				<area shape="poly" coords="2908,3040,3072,3038,3075,2963,2907,2966" alt="L49" target="peninsula_778" href="#" />
				<area shape="poly" coords="2907,2966,3074,2963,3077,2889,2907,2892" alt="L50" target="peninsula_780" href="#" />
				<area shape="poly" coords="2907,2787,3080,2788,3082,2713,2907,2713" alt="L34" target="peninsula_784" href="#" />
				<area shape="poly" coords="2907,2713,3082,2713,3081,2639,2907,2639" alt="L33" target="peninsula_786" href="#" />
				<area shape="poly" coords="2907,2639,3081,2639,3080,2565,2906,2568" alt="L32" target="peninsula_788" href="#" />
				<area shape="poly" coords="2906,2568,3080,2565,3078,2490,2906,2493" alt="L31" target="peninsula_790" href="#" />
				<area shape="poly" coords="2906,2493,3078,2490,3073,2416,2905,2419" alt="L30" target="peninsula_792" href="#" />
				<area shape="poly" coords="2905,2419,3073,2417,3070,2342,2905,2344" alt="L29" target="peninsula_794" href="#" />
				<area shape="poly" coords="2905,2344,3070,2342,3066,2268,2906,2270" alt="L28" target="peninsula_796" href="#" />
				<area shape="poly" coords="2638,2797,2774,2794,2782,2792,2786,2788,2791,2783,2795,2775,2796,2720,2637,2721" alt="L16" target="peninsula_781" href="#" />
				<area shape="poly" coords="2637,2721,2795,2720,2795,2646,2638,2646" alt="L15" target="peninsula_783" href="#" />
				<area shape="poly" coords="2638,2646,2795,2646,2795,2572,2638,2572" alt="L14" target="peninsula_785" href="#" />
				<area shape="poly" coords="2638,2572,2795,2572,2794,2497,2637,2498" alt="L13" target="peninsula_787" href="#" />
				<area shape="poly" coords="2637,2498,2795,2497,2794,2423,2636,2425" alt="L12" target="peninsula_789" href="#" />
				<area shape="poly" coords="2636,2425,2794,2423,2795,2349,2637,2349" alt="L11" target="peninsula_791" href="#" />
				<area shape="poly" coords="2637,2349,2794,2349,2794,2266,2636,2266" alt="L10" target="peninsula_793" href="#" />
				<area shape="poly" coords="2638,2797,2638,2720,2480,2721,2479,2772,2483,2783,2490,2792,2503,2799" alt="L1" target="peninsula_863" href="#" />
				<area shape="poly" coords="2638,2721,2479,2722,2480,2647,2638,2646" alt="L2" target="peninsula_861" href="#" />
				<area shape="poly" coords="2638,2647,2638,2572,2480,2573,2479,2647" alt="L3" target="peninsula_859" href="#" />
				<area shape="poly" coords="2637,2571,2480,2573,2480,2498,2638,2498" alt="L4" target="peninsula_857" href="#" />
				<area shape="poly" coords="2637,2498,2636,2425,2479,2424,2479,2499" alt="L5" target="peninsula_855" href="#" />
				<area shape="poly" coords="2636,2425,2478,2425,2479,2350,2637,2349" alt="L6" target="peninsula_853" href="#" />
				<area shape="poly" coords="2636,2350,2479,2351,2480,2336,2483,2327,2491,2312,2622,2183,2636,2183" alt="L7" target="peninsula_851" href="#" />
				<area shape="poly" coords="2636,2183,2637,2266,2794,2266,2793,2182" alt="L9" target="peninsula_795" href="#" />
				<area shape="poly" coords="2793,2182,2623,2183,2742,2064,2749,2061,2758,2060,2769,2067,2789,2125,2794,2156" alt="L8" target="peninsula_797" href="#" />
				<area shape="poly" coords="2905,2270,2905,2196,3062,2194,3066,2268" alt="L27" target="peninsula_798" href="#" />
				<area shape="poly" coords="2905,2196,2905,2136,3058,2113,3062,2195" alt="L26" target="peninsula_800" href="#" />
				<area shape="poly" coords="2905,2136,2902,2114,2892,2078,3044,2026,3056,2089,3057,2113" alt="L25" target="peninsula_802" href="#" />
				<area shape="poly" coords="2891,2078,3044,2026,3035,1980,3023,1955,2867,2009" alt="L24" target="peninsula_804" href="#" />
				<area shape="poly" coords="2867,2009,3022,1955,2991,1888,2843,1939" alt="L23" target="peninsula_806" href="#" />
				<area shape="poly" coords="2843,1939,2992,1889,2968,1817,2819,1869" alt="L22" target="peninsula_808" href="#" />
				<area shape="poly" coords="2819,1868,2967,1817,2944,1746,2796,1798" alt="L21" target="peninsula_810" href="#" />
				<area shape="poly" coords="2796,1798,2944,1746,2919,1676,2772,1728" alt="L20" target="peninsula_812" href="#" />
				<area shape="poly" coords="2771,1728,2919,1676,2895,1606,2747,1658" alt="L19" target="peninsula_814" href="#" />
				<area shape="poly" coords="2747,1658,2895,1606,2871,1535,2723,1588" alt="L18" target="peninsula_816" href="#" />
				<area shape="poly" coords="2723,1588,2872,1536,2848,1466,2699,1518" alt="L17" target="peninsula_818" href="#" />
				<area shape="poly" coords="2699,1518,2848,1467,2823,1397,2675,1448" alt="L16" target="peninsula_820" href="#" />
				<area shape="poly" coords="2675,1447,2822,1397,2821,1391,2626,1204,2657,1396" alt="L15" target="peninsula_822" href="#" />
				<area shape="poly" coords="2657,1396,2626,1205,2507,1321,2617,1435" alt="L14" target="peninsula_824" href="#" />
				<area shape="poly" coords="2606,1444,2497,1332,2444,1383,2555,1497" alt="L13" target="peninsula_826" href="#" />
				<area shape="poly" coords="2555,1497,2444,1384,2390,1436,2502,1548" alt="L12" target="peninsula_828" href="#" />
				<area shape="poly" coords="2502,1548,2390,1436,2338,1489,2449,1601" alt="L11" target="peninsula_830" href="#" />
				<area shape="poly" coords="2449,1601,2337,1488,2295,1531,2406,1643" alt="L10" target="peninsula_832" href="#" />
				<area shape="poly" coords="2296,1530,2405,1641,2342,1704,2232,1592" alt="L9" target="peninsula_834" href="#" />
				<area shape="poly" coords="2232,1592,2342,1703,2290,1757,2179,1645" alt="L8" target="peninsula_836" href="#" />
				<area shape="poly" coords="2179,1645,2290,1756,2237,1809,2127,1696" alt="L7" target="peninsula_838" href="#" />
				<area shape="poly" coords="2127,1696,2237,1809,2184,1861,2074,1749" alt="L6" target="peninsula_840" href="#" />
				<area shape="poly" coords="2503,1781,2654,1730,2616,1620,2611,1614,2601,1613,2592,1614,2483,1722" alt="L10" target="peninsula_805" href="#" />
				<area shape="poly" coords="2483,1722,2539,1888,2493,1934,2383,1821" alt="L9" target="peninsula_833" href="#" />
				<area shape="poly" coords="2383,1821,2493,1933,2449,1979,2337,1867" alt="L8" target="peninsula_835" href="#" />
				<area shape="poly" coords="2337,1867,2448,1978,2400,2026,2291,1912" alt="L7" target="peninsula_837" href="#" />
				<area shape="poly" coords="2291,1912,2401,2024,2355,2071,2244,1957" alt="L6" target="peninsula_839" href="#" />
				<area shape="poly" coords="2244,1958,2356,2071,2308,2116,2160,2042" alt="L5" target="peninsula_841" href="#" />
				<area shape="poly" coords="2160,2042,2056,2143,2056,2154,2059,2164,2062,2170,2149,2213,2217,2071" alt="L4" target="peninsula_843" href="#" />
				<area shape="poly" coords="2217,2071,2283,2104,2214,2245,2148,2212" alt="L3" target="peninsula_845" href="#" />
				<area shape="poly" coords="2214,2245,2284,2104,2351,2137,2281,2278" alt="L2" target="peninsula_847" href="#" />
				<area shape="poly" coords="2279,2277,2351,2136,2458,2190,2351,2296,2340,2299,2324,2299" alt="L1" target="peninsula_849" href="#" />
				<area shape="poly" coords="2308,2115,2394,2032,2504,2144,2458,2189" alt="L16" target="peninsula_851.5" href="#" />
				<area shape="poly" coords="2393,2031,2503,2143,2551,2099,2440,1987" alt="L15" target="peninsula_855.5" href="#" />
				<area shape="poly" coords="2440,1987,2540,1887,2597,2053,2550,2098" alt="L14" target="peninsula_859.5" href="#" />
				<area shape="poly" coords="2552,1920,2596,2052,2707,1945,2712,1934,2715,1921,2714,1908,2702,1870" alt="L13" target="peninsula_799" href="#" />
				<area shape="poly" coords="2702,1870,2552,1922,2528,1851,2678,1800" alt="L12" target="peninsula_801" href="#" />
				<area shape="poly" coords="2678,1800,2529,1852,2504,1781,2654,1730" alt="L11" target="peninsula_803" href="#" />
				<area shape="poly" coords="2196,2802,2348,2800,2357,2797,2366,2788,2369,2778,2369,2746,2221,2708" alt="L4" target="peninsula_865" href="#" />
				<area shape="poly" coords="2221,2708,2369,2747,2369,2670,2240,2636" alt="L3" target="peninsula_867" href="#" />
				<area shape="poly" coords="2239,2636,2369,2669,2368,2581,2260,2553" alt="L2" target="peninsula_869" href="#" />
				<area shape="poly" coords="2260,2553,2368,2581,2368,2466,2364,2453,2355,2440,2344,2433,2297,2410" alt="L1" target="peninsula_871" href="#" />
				<area shape="poly" coords="2297,2410,2172,2348,2160,2349,2149,2358,2132,2422,2284,2461" alt="L10" target="peninsula_873" href="#" />
				<area shape="poly" coords="2284,2461,2132,2422,2113,2494,2266,2532" alt="L9" target="peninsula_875" href="#" />
				<area shape="poly" coords="2266,2532,2112,2493,2095,2566,2247,2604" alt="L8" target="peninsula_877" href="#" />
				<area shape="poly" coords="2247,2604,2095,2566,2077,2638,2229,2677" alt="L7" target="peninsula_879" href="#" />
				<area shape="poly" coords="2229,2676,2077,2637,2058,2709,2210,2749" alt="L6" target="peninsula_881" href="#" />
				<area shape="poly" coords="2210,2749,2196,2802,2056,2804,2047,2799,2042,2790,2040,2780,2058,2709" alt="L5" target="peninsula_883" href="#" />
				<area shape="poly" coords="1990,2526,2009,2453,1773,2336,1741,2403" alt="L7" target="peninsula_878" href="#" />
				<area shape="poly" coords="1741,2403,1772,2337,1525,2214,1486,2278" alt="L8" target="peninsula_901" href="#" />
				<area shape="poly" coords="1526,2214,1639,2271,1714,2122,1636,2083,1624,2082,1610,2086,1602,2095" alt="L1" target="peninsula_862" href="#" />
				<area shape="poly" coords="1640,2270,1714,2122,1780,2154,1707,2303" alt="L2" target="peninsula_860" href="#" />
				<area shape="poly" coords="1707,2303,1772,2337,1847,2187,1780,2154" alt="L3" target="peninsula_858" href="#" />
				<area shape="poly" coords="1773,2336,1840,2369,1913,2220,1846,2187" alt="L4" target="peninsula_856" href="#" />
				<area shape="poly" coords="1840,2369,1912,2220,1980,2253,1906,2402" alt="L5" target="peninsula_854" href="#" />
				<area shape="poly" coords="1906,2402,2009,2453,2046,2310,2045,2300,2040,2289,2032,2279,1980,2253" alt="L6" target="peninsula_852" href="#" />
				<area shape="poly" coords="2074,1749,2184,1860,2132,1913,2021,1801" alt="L5" target="peninsula_842" href="#" />
				<area shape="poly" coords="2021,1801,2131,1912,2078,1965,1968,1853" alt="L4" target="peninsula_844" href="#" />
				<area shape="poly" coords="1968,1853,2078,1964,2026,2017,1915,1905" alt="L3" target="peninsula_846" href="#" />
				<area shape="poly" coords="1915,1905,2025,2016,1973,2070,1863,1956" alt="L2" target="peninsula_848" href="#" />
				<area shape="poly" coords="1863,1956,1973,2068,1954,2089,1941,2096,1926,2098,1908,2095,1804,2042,1800,2033,1799,2021,1801,2017" alt="L1" target="peninsula_850" href="#" />
			</map>
		</div>
	</xsl:template>
</xsl:stylesheet>