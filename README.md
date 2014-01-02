Apple XCode Cookbook
==============

Installs Apple XCode and command line tools on OS X Mavericks.

Requirements
------------

#### Platforms

* `mac_os_x`

#### Cookbooks

* `dmg`

The DMGs are not accessible from Apple directly without logging into the developer center.
You must place the DMGs on a fileserver yourself and set the URL attributes below.

Attributes
----------

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['xcode']['url']</tt></td>
    <td>String</td>
    <td>URL to the Xcode DMG</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['xcode']['checksum']</tt></td>
    <td>String</td>
    <td>Checksum of the XCode DMG</td>
    <td>(in the attributes file)</td>
  </tr>
  <tr>
    <td><tt>['xcode']['cli']['url']</tt></td>
    <td>String</td>
    <td>URL to the Xcode Command-Line Tools DMG</td>
    <td><tt>nil</tt></td>
  </tr>
  <tr>
    <td><tt>['xcode']['cli']['checksum']</tt></td>
    <td>String</td>
    <td>Checksum of the XCode CLI DMG</td>
    <td>(in the attributes file)</td>
  </tr>
</table>

Usage
-----

Just include `xcode` in your node's `run_list` and set the attributes above.

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[xcode]"
  ]
}
```

Bugs
----

* Only supports OS X Mavericks at present. Pull requests welcome!

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write your change
4. Submit a Pull Request using Github

License and Authors
-------------------

* Author: Julian C. Dunn (<jdunn@aquezada.com>)
* License: Apache 2.0
