pub struct Buffer {
    pub data: *const u8,
    pub size: usize
}

impl Buffer {
    pub fn from_string(string: String) -> Buffer {
        Buffer { data: string.as_ptr(), size: string.len() }
    }

    pub fn to_string(&self) -> String {
        self.to_slice().to_string()
    }

    pub fn to_slice(&self) -> &str {
        let slice = unsafe { std::slice::from_raw_parts(self.data, self.size) };
        unsafe { std::str::from_utf8_unchecked(slice) }
    }
}
