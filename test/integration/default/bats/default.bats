@test "minecraft server is running" {
    service minecraft status | grep 'is running'
}