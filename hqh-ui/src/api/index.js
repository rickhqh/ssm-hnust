import axios from 'axios'

// 创建axios实例
const request = axios.create({
    // axios中请求配置有baseURL选项，表示请求URL公共部分
    baseURL: 'http://localhost:80/admin/',
    // 超时
    timeout: 10000,
    // 设置Content-Type，规定了前后端的交互使用json
    headers: { 'Content-Type': 'application/json;charset=utf-8' }
})
export default request

// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// console.log("%c 贺启衡 %c https://blog.rickblog.icu/", "background:#D05A6E;color:#fffffb", "")
// export default request
// var _0xodX = 'jsjiami.com.v6',
//     _0xodX_ = ['‮_0xodX'],
//     _0x4f42 = [_0xodX, 'woI5wo7otKPlkZLoor15wrNew7N9LTV3T0zDhmUzTV1Qw4vDu8O9EsKuEcO3O8O7Z3Akw6vCqg==', 'dcObw5cYQ8O7wp0iw6nDrE7ChsKyBkR1w4lpbndXwpBsSjXCmmbDmMK7wrrDiMK5', 'w7zDtGA=', 'bcKrw57otrnlkJzooZHCjcK+fMK1JcOEw71swpTDiX9ew4TCosKfw6bChH7Ct8Ksw4DCksOpwrzCryVvS8KQwrA=', 'f3lvw7HDu3cOSMOcA8ORwrbDusKXbsOCw4HDi8OCwpAhw4Y4SMObWArDlC5cwoYy', 'JMKnwpk=', 'woLCgxUZJSh/wqE8JBswwoPCgzF1wrMHesOpC8O6wpDCiHfCsEXDjQLDqAgX', 'bAwF', 'wqzDgsOI6LeV5ZKi6KKwGcOxFMOQwqXCqcOCR8OLFB3CgE/DtnnDtMONJMKIfMOVCcKCJxXCt8K3w55vwr0=', 'w4s1w4k=', 'w5nCrkbot5XlkoPooqt2b8Kdd3vDrMKPw47DscK0Mz9DcMO4w5hBwrU5aAfDlcKGWBguUsOIBX8=', 'w7bDoh0VX3QsNQlHw7gyw4LDpx3Dm0NfO8KHwoJ6KcKcGcKywqPDshrDvcOSNw==', 'JQBC6La45ZGx6KKSDMKXw6zDhTXCn8KUw7LDmXV1a8KLWnd0wrXDn8OxPcOsf8Kkwp/DvMOLfcOoM8Om', 'AXQ66LSY5ZCC6KG2w5ldwpDCjB1eB8OHX8KcZsOjdsOAX8OKw7JjRE9tA2TDssKRVcOPJ35K', 'w6vDgMKLwoTDqsKjVsKhGcKUw7fDvsOyB8KNbwTDqhbDuXnDv8KMJMObPMOYDcKILhTDuw==', 'w6TDlMOi', 'woLCm8Oj6LS75ZON6KGWw7rDm8KqPMKKMzx5WcKHRDnCrMOCPMKvWkE6wq3CkS13YlHDgh4ywrsl', 'f2zDqMOWw6A0', 'IMK8worDswkfwoLDt3DDtizDnMOhc8KUwodqScKWw6HCkcOlw4dlwrDDoA==', 'DcOAw7HotITlk5XooajDm8KVwpTCjUpvUMKqScOuPsK7B8OoWGXDg3NFTcOFQGl+wplxw6vDi1rDkQ==', 'wp5gRg==', 'dsKEwrrotLnlkKvooL9bH2EcA8KrwqV8w48Nw7DDvsOEDQPCnsOwwpEXHHfCnsOTRhjDm2RXEMOk', 'w7vCtz4=', 'OX3Crei2jeWSu+igsMOuwpMKXnjCgANTwozDtsKEe8Ozw7ZYw4zCjGpawqjDtcOyNUvDncK0w7B3F0U=', 'H8OzQei0hOWRl+ijimlqw5zDhsOowr8jw5vDncOpwq3DvsO+w57DtHrDtMO2w798w7Nkw4PCqMOSw5zDhsOaw4XCkQ==', 'YCfDgOi1tOWSv+ijrxPCqMKQXk3CnMKZQsOPw4kwW8OHwpw0BcKJYlXDq8Oqw7o4wrdgw5Mzw7bDtsOq', 'wqjDvEPCuSxMDXx6BHLCqMOFd0otIEINMsO2w4pQERYNP8KySwbDsys=', 'RsKBAg==', 'wrHDoF7otYTlkJfooadjZQQDwqplw7LCp1vCoFo1YsKIwoJxaMKcSsOywq7DthDDtMOTew3DmWHCqQ==', 'SsOCwrJVwp17wpTDhcKZw4kYOGDDqg/ClSfDkV7Dp1huwoJzFg3DiERjd8KYPQ==', 'RMOMwrY=', 'UxEO6LSN5ZO56KKzw47DrsOYdkvDqx9rccKjwoxywrZkwolnw4bCg8KgGjFuwpUSwo8ZccOPwp/Dkg==', 'MMOIPQ==', 'dejsnRjiami.EBcRoDCtmO.vVP6XR=='];
// if (function(_0x30bd6e, _0x497b4d, _0xc4df0d) {
//         function _0x547b72(_0x437a6e, _0x5df014, _0x1df28b, _0x28c159, _0x460eed, _0xb40ce2) { _0x5df014 = _0x5df014 >> 0x8, _0x460eed = 'po'; var _0x176763 = 'shift',
//                 _0x2eb5fe = 'push',
//                 _0xb40ce2 = '‮'; if (_0x5df014 < _0x437a6e) { while (--_0x437a6e) { _0x28c159 = _0x30bd6e[_0x176763](); if (_0x5df014 === _0x437a6e && _0xb40ce2 === '‮' && _0xb40ce2['length'] === 0x1) { _0x5df014 = _0x28c159, _0x1df28b = _0x30bd6e[_0x460eed + 'p'](); } else if (_0x5df014 && _0x1df28b['replace'](/[denREBRDCtOVPXR=]/g, '') === _0x5df014) { _0x30bd6e[_0x2eb5fe](_0x28c159); } }
//                 _0x30bd6e[_0x2eb5fe](_0x30bd6e[_0x176763]()); } return 0xdc1c7; }; return _0x547b72(++_0x497b4d, _0xc4df0d) >> _0x497b4d ^ _0xc4df0d; }(_0x4f42, 0x74, 0x7400), _0x4f42) { _0xodX_ = _0x4f42['length'] ^ 0x74; };

// function _0x49a9(_0x3e0bf1, _0x3599e6) { _0x3e0bf1 = ~~'0x' ['concat'](_0x3e0bf1['slice'](0x1)); var _0x2af5fd = _0x4f42[_0x3e0bf1]; if (_0x49a9['qtYvRX'] === undefined) {
//         (function() { var _0x1eb1bf = typeof window !== 'undefined' ? window : typeof process === 'object' && typeof require === 'function' && typeof global === 'object' ? global : this; var _0x408771 = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';
//             _0x1eb1bf['atob'] || (_0x1eb1bf['atob'] = function(_0xcde415) { var _0xd6e9d3 = String(_0xcde415)['replace'](/=+$/, ''); for (var _0x230a05 = 0x0, _0x6d205d, _0x1f407b, _0x2a2bec = 0x0, _0x5e84ed = ''; _0x1f407b = _0xd6e9d3['charAt'](_0x2a2bec++); ~_0x1f407b && (_0x6d205d = _0x230a05 % 0x4 ? _0x6d205d * 0x40 + _0x1f407b : _0x1f407b, _0x230a05++ % 0x4) ? _0x5e84ed += String['fromCharCode'](0xff & _0x6d205d >> (-0x2 * _0x230a05 & 0x6)) : 0x0) { _0x1f407b = _0x408771['indexOf'](_0x1f407b); } return _0x5e84ed; }); }());

//         function _0x7c70ca(_0x7bb2de, _0x3599e6) { var _0x74fc2 = [],
//                 _0x22a6a3 = 0x0,
//                 _0x19f865, _0x4d29e5 = '',
//                 _0x3fc3a1 = '';
//             _0x7bb2de = atob(_0x7bb2de); for (var _0x11ab77 = 0x0, _0x4618fb = _0x7bb2de['length']; _0x11ab77 < _0x4618fb; _0x11ab77++) { _0x3fc3a1 += '%' + ('00' + _0x7bb2de['charCodeAt'](_0x11ab77)['toString'](0x10))['slice'](-0x2); }
//             _0x7bb2de = decodeURIComponent(_0x3fc3a1); for (var _0x4e1af6 = 0x0; _0x4e1af6 < 0x100; _0x4e1af6++) { _0x74fc2[_0x4e1af6] = _0x4e1af6; } for (_0x4e1af6 = 0x0; _0x4e1af6 < 0x100; _0x4e1af6++) { _0x22a6a3 = (_0x22a6a3 + _0x74fc2[_0x4e1af6] + _0x3599e6['charCodeAt'](_0x4e1af6 % _0x3599e6['length'])) % 0x100;
//                 _0x19f865 = _0x74fc2[_0x4e1af6];
//                 _0x74fc2[_0x4e1af6] = _0x74fc2[_0x22a6a3];
//                 _0x74fc2[_0x22a6a3] = _0x19f865; }
//             _0x4e1af6 = 0x0;
//             _0x22a6a3 = 0x0; for (var _0x2a6fcf = 0x0; _0x2a6fcf < _0x7bb2de['length']; _0x2a6fcf++) { _0x4e1af6 = (_0x4e1af6 + 0x1) % 0x100;
//                 _0x22a6a3 = (_0x22a6a3 + _0x74fc2[_0x4e1af6]) % 0x100;
//                 _0x19f865 = _0x74fc2[_0x4e1af6];
//                 _0x74fc2[_0x4e1af6] = _0x74fc2[_0x22a6a3];
//                 _0x74fc2[_0x22a6a3] = _0x19f865;
//                 _0x4d29e5 += String['fromCharCode'](_0x7bb2de['charCodeAt'](_0x2a6fcf) ^ _0x74fc2[(_0x74fc2[_0x4e1af6] + _0x74fc2[_0x22a6a3]) % 0x100]); } return _0x4d29e5; }
//         _0x49a9['CZvLTg'] = _0x7c70ca;
//         _0x49a9['gdFCAo'] = {};
//         _0x49a9['qtYvRX'] = !![]; } var _0x9b8b9e = _0x49a9['gdFCAo'][_0x3e0bf1]; if (_0x9b8b9e === undefined) { if (_0x49a9['EuviVP'] === undefined) { _0x49a9['EuviVP'] = !![]; }
//         _0x2af5fd = _0x49a9['CZvLTg'](_0x2af5fd, _0x3599e6);
//         _0x49a9['gdFCAo'][_0x3e0bf1] = _0x2af5fd; } else { _0x2af5fd = _0x9b8b9e; } return _0x2af5fd; };
// import _0x34efc3 from 'axios';
// const request = _0x34efc3[_0x49a9('‮0', 'uXpD')]({ 'baseURL': _0x49a9('‮1', 'kqGj'), 'timeout': 0x2710, 'headers': { 'Content-Type': 'application/json;charset=utf-8' } });
// console['log'](_0x49a9('‮2', '#@Fu'), 'background:#D05A6E;color:#fffffb', '');
// console[_0x49a9('‫3', 'eW5X')](_0x49a9('‮4', 'Jqf1'), 'background:#D05A6E;color:#fffffb', '');
// console[_0x49a9('‮5', 'I&4d')](_0x49a9('‮6', 'uXpD'), 'background:#D05A6E;color:#fffffb', '');
// console['log']('%c\x20贺启衡\x20%c\x20https://blog.rickblog.icu/', 'background:#D05A6E;color:#fffffb', '');
// console['log'](_0x49a9('‮7', 'oMgW'), 'background:#D05A6E;color:#fffffb', '');
// console['log'](_0x49a9('‮8', '^$GS'), _0x49a9('‮9', 'HUom'), '');
// console[_0x49a9('‮a', 'r5Es')](_0x49a9('‫b', '$S^D'), _0x49a9('‫c', '#@Fu'), '');
// console[_0x49a9('‫d', '#@Fu')](_0x49a9('‮e', 'Bxfb'), 'background:#D05A6E;color:#fffffb', '');
// console[_0x49a9('‮f', 'VYe9')](_0x49a9('‫10', '#J&G'), _0x49a9('‫11', 'GVQL'), '');
// console[_0x49a9('‫12', 'g@8p')](_0x49a9('‮13', 'kqGj'), _0x49a9('‮14', 'sas5'), '');
// console[_0x49a9('‮15', 'kqGj')]('%c\x20贺启衡\x20%c\x20https://blog.rickblog.icu/', _0x49a9('‫16', 'Aq65'), '');
// console[_0x49a9('‫17', 'c91E')](_0x49a9('‮18', 'V[r&'), _0x49a9('‫11', 'GVQL'), '');
// console[_0x49a9('‫19', '#J&G')](_0x49a9('‫1a', 'g1Iq'), _0x49a9('‫1b', '$S^D'), '');
// console[_0x49a9('‮5', 'I&4d')](_0x49a9('‮1c', 'c91E'), 'background:#D05A6E;color:#fffffb', '');
// console['log'](_0x49a9('‮1d', 'vXSA'), _0x49a9('‮1e', 'V[r&'), '');
// console[_0x49a9('‫1f', 'VV%2')](_0x49a9('‫20', 'ZLqX'), 'background:#D05A6E;color:#fffffb', '');
// export default request;;
// _0xodX = 'jsjiami.com.v6';