# erlang
asdf plugin add erlang
sudo apt install -y libssl-dev automake autoconf libncurses5-dev
asdf install erlang latest
asdf global erlang latest

# elixir
## note: elixir version compatible with specific erlang versions
### https://hexdocs.pm/elixir/compatibility-and-deprecations.html#compatibility-between-elixir-and-erlang-otp
asdf plugin add elixir 
asdf install elixir latest
asdf global elixir latest
