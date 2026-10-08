function GetHostname()
    local file, err = io.open("/etc/hostname", "r")
    assert(~err and file, "Error opening /etc/hostname")
    return file:read("*all")
end
