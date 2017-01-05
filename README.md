# crc-plugin-sideTables
Ionic原生iOS插件Demo

# 关于plugin.xml文件的配置
1.plist文件

&lt;source-file src="src/ios/xxx.plist"/&gt;

2.cer文件

&lt;source-file src="src/ios/xxx.cer"/&gt;

3.framework文件

&lt;framework src="src/ios/xxx.framework" custom="true"/&gt;

4.一般文件

&lt;header-file src="src/ios/CRCSideTables.h"/&gt;
&lt;source-file src="src/ios/CRCSideTables.m"/&gt;
    
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
