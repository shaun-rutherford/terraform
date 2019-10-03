resource "aws_iam_user" "shaun_ray_rutherford" {
  name = "shaun.ray.rutherford"
  path = "/Users/"
}

resource "aws_iam_user_group_membership" "shaun_ray_rutherford" {
  user = "${aws_iam_user.shaun_ray_rutherford.name}"

  groups = [
    "Administrators"
  ]

  depends_on = [
    aws_iam_group.Administrators,
    aws_iam_user.shaun_ray_rutherford
  ]
}

resource "aws_iam_access_key" "shaun_ray_rutherford" {
  user = "${aws_iam_user.shaun_ray_rutherford.name}"
  pgp_key = <<EOT
mQENBF2UEL4BCADOgyRjpiik2gsv8QSF/mRg+raWPuoxMH68GoiiboeRnF7G4qsvDV4+a/l8IzIU
IOwhGNGsx/dbnWLjPD7AilscuGKDO7BM6lTBLwwHdfvXI5o3zT0jAo1pyzrB/PqEa0EHJ8nXr2m4
WEvQWpOpzRFy9+nn25UdzS2FQaGR59Y3ZMW4Vs26jM9XbX/NuZFx+Hp6FgWOHpd/Ib+fKe9PQCsD
rb8C97bdIQLfM+Hw0Cdhw16Y69JnPXONwtOZ3kXV8onKGzaUQlkWhZmjOdt60rpszOa6Rwf+fbGZ
1D4attyJlOqdaFjGBC/b/ZLyHkfWicXqm3K3A8s9gvWCf96StxwRABEBAAG0JVNoYXVuIFJ1dGhl
cmZvcmQgPGFlb25zaWVzQGdtYWlsLmNvbT6JAVQEEwEIAD4WIQT2qvk0KgVEzO1ORpQQS2nOY5E3
zgUCXZQQvgIbAwUJA8JnAAULCQgHAgYVCgkICwIEFgIDAQIeAQIXgAAKCRAQS2nOY5E3zlZbB/4v
kgRq4CfuAnMHuMJFPRCUkDiEoPgFP6GtQ69O6WZcwAC1yMCvVpRkNH8/XvkHZVu9oMhAkqggoJNq
XMmLt+m6WxWQ2/toaEOMI5NoKmpEXwnSbqFzFgHWntn2nqurBfSUfVTlYXp3TC/fbd1uCyS5oCYT
bXsubfcpAEVqk82I7OhiJ2zmO3KUkKEYvOMrSsMho8gWmmMAkgxbrRYnuvssAOYzQ10wryshBE7O
v+S+7e8L/FnrzUjqp99pNMYDza8i9Mx++9dZFRU1IMYtr4b2/pnO6IIuAgTljwqBp0vBGGHeehSg
rKoMFGue+622vfd49n0wqywcmJaYFZviZ7KJuQENBF2UEL4BCAC5Al0Z4jAAQ23xZ2Cl+2ge6r1I
3uv7p0nUOMUBYEdbjSvpTzasYspdg4IRbejDBIbXpryd5w343NuatbBt2LPZNxwZ3obrNuuX4J57
VrZnTosCkd5BaIdqwkqaKUxSfxsNVAdDpU8yVOYju1eIk1dWGMnLp95CrlrZtrgG59Z5V8OPj+yv
7BkVdhhM7MAl0g3l+QZPBPTnRCoJYQsPardQDyLK+WkhUux+0/3gOpNdLaG8DnQNXAw4U2DZuEpl
WYqhC2TDQFAQnX5lQQ08IovnDeh6jRBSBwnOdSbV+on8bcKG3ZywI1vZ3+K602dS6AKcL3gks3HH
czeZQAP5n5bfABEBAAGJATwEGAEIACYWIQT2qvk0KgVEzO1ORpQQS2nOY5E3zgUCXZQQvgIbDAUJ
A8JnAAAKCRAQS2nOY5E3zr+VB/4yMIUIP7kAc6gBVhEUVKewxQ9jBmoXkYLOO39Z/GdUE4WG88tl
Ba19fGFGia3USNxJ7oT4JVaNsu5E4nBLEOkDdgQ15uUsY32Oyr2T8widrSNcIYMP3zPsnKaJ3wyG
RbE1YZN/wpl8kjSVQDqJIjnvN7hkekQnehyfRJYIGf8m55wgY5KnFINDzAA/8OOzERpyrvvNN29b
8Hz/9WDli9goxQCFky1vWJKA852el3TNLHdyZODD8qTqBhTz+OGkCBKL885l8YWEQHXq4DKJjoZ3
M4lAhJxivxSP8TQ/PzEfR+6+U4zMmO0WGZeukvDcjciXzlr14BqI2p6gvAPpl3Tl
EOT
}

#gpg --gen-key
#gpg --export "Shaun Rutherford" | base64
#terraform output secret | base64 --decode | gpg --decrypt

output "secret" {
  value = "${aws_iam_access_key.shaun_ray_rutherford.encrypted_secret}"
}

output "access_key_id" {
  value = "${aws_iam_access_key.shaun_ray_rutherford.id}"
}
