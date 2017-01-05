# crc-plugin-sideTables
Ionic原生iOS插件Demo

# 关于plugin.xml文件的配置
1.plist文件:<source-file src="src/ios/xxx.plist"/>
2.cer文件:<source-file src="src/ios/xxx.cer"/>
3.framework文件:<framework src="src/ios/xxx.framework" custom="true"/>

# js调用
CRCSideTables.getApproverTree(
      function (response) {
        console.log(response);
      },
      function (response) {
        console.log(response);
      },
      'testPlugin'
    );
