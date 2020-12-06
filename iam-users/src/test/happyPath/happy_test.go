package happyTest

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

var terraformDir	= "../"

func TestIAMUser(t *testing.T) {

	// var  user_names			= []string{"nevsa", "cordelia", "kriste", "darleen", "wynnie", "vonnie", "emelita", "maurita", "devinne"}

	t.Parallel()

	terraformOptions := &terraform.Options{
		TerraformDir:  terraformDir,
		Upgrade: true,

		VarFiles: []string{"happyPath/testing.tfvars"},
		Vars: map[string]interface{}{
			"env"					: "dev",
			"user_names"  : "nevsa",
		},

	}

	defer terraform.Destroy(t, terraformOptions)

	terraform.InitAndApply(t, terraformOptions)

	// Let's check an iam user
	expectedIamUser	:= []string{"nevsa-dev"}
	actualIamUser := terraform.OutputList(t, terraformOptions, "all_iam_user")

	t.Run("Check IAM user ", func(t *testing.T){
		assert.Equal(t, expectedIamUser, actualIamUser)
	})

}
