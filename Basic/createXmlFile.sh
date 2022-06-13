#!/bin/bash

AZP_TOKEN=tokenvalue
AZ_PAT_NAME=selfhostedagentname

cd ../document

echo 'Creating settings file'

echo '<settings xmlns="http://maven.apache.org/SETTINGS/1.0.0"
          xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
          xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.0.0
                              https://maven.apache.org/xsd/settings-1.0.0.xsd">
  <servers>
	<server>
      <id>azDeviosArtifact</id>
      <username>'$AZ_PAT_NAME'</username>
      <password>'$AZP_TOKEN'</password>
    </server>
  </servers>
</settings>' >> testing.xml

echo 'Settings file ready'

ls