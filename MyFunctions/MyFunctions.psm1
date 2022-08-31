# functions collection

function Prompt_repo {
    
    Add-Type -AssemblyName System.Windows.Forms
    Add-Type -AssemblyName System.Drawing

    $repo_form = New-Object System.Windows.Forms.Form
    $repo_form.Text = 'Repo dialog box'
    $repo_form.Size = New-Object System.Drawing.Size(500,185)
    $repo_form.StartPosition = 'CenterScreen'

    $add_btn = New-Object System.Windows.Forms.Button
    $add_btn.Location = New-Object System.Drawing.Point(175,95)
    $add_btn.Size = New-Object System.Drawing.Size(120,30)
    $add_btn.Text = 'Add'
    $add_btn.DialogResult = [System.Windows.Forms.DialogResult]::OK

    $repo_form.AcceptButton = $add_btn
    $repo_form.Controls.Add($add_btn)

    $cancel_btn = New-Object System.Windows.Forms.Button
    $cancel_btn.Location = New-Object System.Drawing.Point(310,95)
    $cancel_btn.Size = New-Object System.Drawing.Size(120,30)
    $cancel_btn.Text = 'Cancel'
    $cancel_btn.DialogResult = [System.Windows.Forms.DialogResult]::Cancel

    $repo_form.CancelButton = $cancel_btn
    $repo_form.Controls.Add($cancel_btn)

    $msg_btn = New-Object System.Windows.Forms.Label
    $msg_btn.Location = New-Object System.Drawing.Point(29,20)
    $msg_btn.Size = New-Object System.Drawing.Size(240,20)
    $msg_btn.Text = 'Please provide the repo name:'

    $repo_form.Controls.Add($msg_btn)

    $input_field_btn = New-Object System.Windows.Forms.TextBox
    $input_field_btn.Location = New-Object System.Drawing.Point(29,45)
    $input_field_btn.Size = New-Object System.Drawing.Size(400,20)

    $repo_form.Controls.Add($input_field_btn)
    $repo_form.Topmost = $true
    $repo_form.Add_Shown({$input_field_btn.Select()})

    $prompt_dial = $repo_form.ShowDialog()

    if ($prompt_dial -eq [System.Windows.Forms.DialogResult]::OK)
    {

        $repo_name = $input_field_btn.Text
    }

    return $repo_name
}

function Prompt_commit {
    
    Add-Type -AssemblyName System.Windows.Forms
    Add-Type -AssemblyName System.Drawing

    $commit_form = New-Object System.Windows.Forms.Form
    $commit_form.Text = 'Commit dialog box'
    $commit_form.Size = New-Object System.Drawing.Size(500,185)
    $commit_form.StartPosition = 'CenterScreen'

    $add_btn = New-Object System.Windows.Forms.Button
    $add_btn.Location = New-Object System.Drawing.Point(175,95)
    $add_btn.Size = New-Object System.Drawing.Size(120,30)
    $add_btn.Text = 'Add'
    $add_btn.DialogResult = [System.Windows.Forms.DialogResult]::OK

    $commit_form.AcceptButton = $add_btn
    $commit_form.Controls.Add($add_btn)

    $cancel_btn = New-Object System.Windows.Forms.Button
    $cancel_btn.Location = New-Object System.Drawing.Point(310,95)
    $cancel_btn.Size = New-Object System.Drawing.Size(120,30)
    $cancel_btn.Text = 'Cancel'
    $cancel_btn.DialogResult = [System.Windows.Forms.DialogResult]::Cancel

    $commit_form.CancelButton = $cancel_btn
    $commit_form.Controls.Add($cancel_btn)

    $msg_btn = New-Object System.Windows.Forms.Label
    $msg_btn.Location = New-Object System.Drawing.Point(29,20)
    $msg_btn.Size = New-Object System.Drawing.Size(240,20)
    $msg_btn.Text = 'Please provide the commit name:'

    $commit_form.Controls.Add($msg_btn)

    $input_field_btn = New-Object System.Windows.Forms.TextBox
    $input_field_btn.Location = New-Object System.Drawing.Point(29,45)
    $input_field_btn.Size = New-Object System.Drawing.Size(400,20)

    $commit_form.Controls.Add($input_field_btn)
    $commit_form.Topmost = $true
    $commit_form.Add_Shown({$input_field_btn.Select()})

    $prompt_dial = $commit_form.ShowDialog()

    if ($prompt_dial -eq [System.Windows.Forms.DialogResult]::OK)
    {

        $commit_name = $input_field_btn.Text
    }

    return $commit_name
}

function Prompt_choice {
    
    Add-Type -AssemblyName System.Windows.Forms
    Add-Type -AssemblyName System.Drawing

    $Choice_form = New-Object System.Windows.Forms.Form
    $Choice_form.Text = 'Choice dialog box'
    $Choice_form.Size = New-Object System.Drawing.Size(480,210)
    $Choice_form.StartPosition = 'CenterScreen'

    $add_btn = New-Object System.Windows.Forms.Button
    $add_btn.Location = New-Object System.Drawing.Point(175,120)
    $add_btn.Size = New-Object System.Drawing.Size(120,30)
    $add_btn.Text = 'Add'
    $add_btn.DialogResult = [System.Windows.Forms.DialogResult]::OK

    $Choice_form.AcceptButton = $add_btn
    $Choice_form.Controls.Add($add_btn)

    $cancel_btn = New-Object System.Windows.Forms.Button
    $cancel_btn.Location = New-Object System.Drawing.Point(310,120)
    $cancel_btn.Size = New-Object System.Drawing.Size(120,30)
    $cancel_btn.Text = 'Cancel'
    $cancel_btn.DialogResult = [System.Windows.Forms.DialogResult]::Cancel

    $Choice_form.CancelButton = $cancel_btn
    $Choice_form.Controls.Add($cancel_btn)

    $msg_btn = New-Object System.Windows.Forms.Label
    $msg_btn.Location = New-Object System.Drawing.Point(10,1)
    $msg_btn.Size = New-Object System.Drawing.Size(240,80)
    $msg_btn.Text = "
        Git actions:

                        - Type `1` for new repo
                        - Type `2` for new code"

    
    $Choice_form.Controls.Add($msg_btn)

    $input_field_btn = New-Object System.Windows.Forms.TextBox
    $input_field_btn.Location = New-Object System.Drawing.Point(29,80)
    $input_field_btn.Size = New-Object System.Drawing.Size(400,55)

    $Choice_form.Controls.Add($input_field_btn)
    $Choice_form.Topmost = $true
    $Choice_form.Add_Shown({$input_field_btn.Select()})

    $prompt_dial = $Choice_form.ShowDialog()

    if ($prompt_dial -eq [System.Windows.Forms.DialogResult]::OK)
    {

        $choice = $input_field_btn.Text
    }

    return $choice
}
