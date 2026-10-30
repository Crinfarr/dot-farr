function GetHostname()
    local file, err = io.open("/etc/hostname", "r")
    assert(not err and file, "Error opening /etc/hostname")
    return file:read("*l")
end
