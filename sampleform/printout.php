<? 
  $cookie_fname_key = "fname";
  $cookie_fname_value = $_POST['fname'];

  if(!isset($_COOKIE[$cookie_fname_key])) {
    echo "Cookie named '" . $cookie_fname_key . "' is not set!";
  } else {
    echo "Cookie '" . $cookie_fname_key . "' is set!<br>";
    echo "Value is: " . $_COOKIE[$cookie_fname_key];
  }

  setcookie($cookie_fname_key, $cookie_fname_value, time() + (86400 * 30), "/"); // 86400 = 1 day
?>

<html>
  <head>
      <title>Test Capybara</title>
  </head>
  <body>
  
  <table>
    <tr>
      <td>Firstname:</td>
      <td><div id="fname"><? echo $_POST['fname']; ?></div></td>
    </tr>
    <tr>
      <td>Gender:</td>
      <td>
        <div id="gender"><? echo $_POST['gen']; ?></div>
      </td>
    </tr>
    <tr>
      <td>What do you like?</td>
      <td>
        <div id="fruit"><? echo $_POST['fruit']; ?></div>
      </td>
    </tr>
    <tr>
      <td>What you like most?</td>
      <td>
        <div id="something"><? echo $_POST['something']; ?></div>
      </td>
    </tr>
  </table>
  </body>
</html>
