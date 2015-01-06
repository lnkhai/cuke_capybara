
<!DOCTYPE html>
<html>
  <head>
    <title>Test Capybara</title>
  </head>
  <body>
  <form action="./printout.php" method="post">
  <table>
    <tr>
      <td>Firstname:</td>
      <td><input type="text" name="fname" id="firstname" size="30"/></td>
    </tr>
    <tr>
      <td>Gender:</td>
      <td>
        <input type="radio" name="gen" id="gen_male" value="male"/> Male
        <input type="radio" name="gen" id="gen_female" value="female"/> Female
      </td>
    </tr>
    <tr>
      <td>What do you like?</td>
      <td>
        <input type="checkbox" name="fruit" value="Apples" id="fruit_apple"/> Apples<br />
        <input type="checkbox" name="fruit" value="Oranges" id="fruit_orange"/> Oranges<br />
        <input type="checkbox" name="fruit" value="Pears" id="fruit_pear"/> Pears<br />
        <input type="checkbox" name="fruit" value="Peaches" id="fruit_peach"/> Peaches<br />
      </td>
    </tr>
    <tr>
      <td>What you like most?</td>
      <td>
        <select name="something">
          <option value="Google">Google</option>
          <option value="Bing">Bing</option>
          <option value="Yahoo">Yahoo</opton>
        </select>
      </td>
    </tr>

    <tr>
      <td></td>
      <td><input type="submit" value="Submit" id="submit"/>
    </tr>
  </table>
  </form>
  </body>
</html>
