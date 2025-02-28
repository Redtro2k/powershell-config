# New-Item -Path $PROFILE -ItemType File -Force

# -- for run as administrator
# Get-ExecutionPolicy
# Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned -Force
# to confirm execute for command
# Get-Command -CommandType Function

function pa {
    if($args[0] -eq "serve"){
        $port = 8000
        if($args.Length -gt 1){
            $port = $args[1]
        }
        php artisan serve --port=$port
    } else{
        php artisan $args
    }
}
function model-show { php artisan model:show $args[0] }

function migrate-table {php artisan make:migration $args[0]}

function tinker {php artisan tinker}

function rl {php artisan route:list}

function nrd {npm run dev}