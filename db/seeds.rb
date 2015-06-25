Post.create(title: "Post test 1", blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur hendrerit nunc, ac placerat orci mollis in. Vestibulum mollis dolor eu mi molestie dapibus. Nullam tempus nec libero in tristique. Ut varius, libero eu laoreet euismod, orci urna finibus mauris, et accumsan erat nunc sit amet quam. Aliquam condimentum in odio quis eleifend. Praesent at finibus libero. Nunc lacinia vel velit id fringilla. Proin ut sapien nec diam faucibus rhoncus. Mauris blandit lobortis cursus.

Donec in porttitor sapien. Donec ac dolor vitae est iaculis tincidunt eget eget ligula. Morbi eget lacus sed odio ullamcorper lacinia. Quisque est magna, porta vel consequat sed, facilisis non dolor. Curabitur quis tincidunt turpis, vel pretium quam. Maecenas rutrum enim vel mi euismod viverra. Donec a nisi at tellus tincidunt interdum vel ut augue. Nulla pharetra ultrices lectus non convallis. Donec ante justo, tincidunt eget semper sed, commodo vitae magna. Donec ut condimentum ante. Praesent eleifend efficitur eros, tempus rhoncus justo ultrices et.")
Post.create(title: "Post test 2", blog: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer efficitur hendrerit nunc, ac placerat orci mollis in. Vestibulum mollis dolor eu mi molestie dapibus. Nullam tempus nec libero in tristique. Ut varius, libero eu laoreet euismod, orci urna finibus mauris, et accumsan erat nunc sit amet quam. Aliquam condimentum in odio quis eleifend. Praesent at finibus libero. Nunc lacinia vel velit id fringilla. Proin ut sapien nec diam faucibus rhoncus. Mauris blandit lobortis cursus.

Donec in porttitor sapien. Donec ac dolor vitae est iaculis tincidunt eget eget ligula. Morbi eget lacus sed odio ullamcorper lacinia. Quisque est magna, porta vel consequat sed, facilisis non dolor. Curabitur quis tincidunt turpis, vel pretium quam. Maecenas rutrum enim vel mi euismod viverra. Donec a nisi at tellus tincidunt interdum vel ut augue. Nulla pharetra ultrices lectus non convallis. Donec ante justo, tincidunt eget semper sed, commodo vitae magna. Donec ut condimentum ante. Praesent eleifend efficitur eros, tempus rhoncus justo ultrices et.")
Post.create(title: "Post test 3", blog: "Donec in porttitor sapien. Donec ac dolor vitae est iaculis tincidunt eget eget ligula. Morbi eget lacus sed odio ullamcorper lacinia. Quisque est magna, porta vel consequat sed, facilisis non dolor. Curabitur quis tincidunt turpis, vel pretium quam. Maecenas rutrum enim vel mi euismod viverra. Donec a nisi at tellus tincidunt interdum vel ut augue. Nulla pharetra ultrices lectus non convallis. Donec ante justo, tincidunt eget semper sed, commodo vitae magna. Donec ut condimentum ante. Praesent eleifend efficitur eros, tempus rhoncus justo ultrices et.")

Tag.create(name: "travel")
Tag.create(name: "food")
Tag.create(name: "business")

PostsTag.create(post_id: 1, tag_id: 1)
PostsTag.create(post_id: 1, tag_id: 2)
PostsTag.create(post_id: 1, tag_id: 3)
PostsTag.create(post_id: 2, tag_id: 1)
PostsTag.create(post_id: 2, tag_id: 3)
PostsTag.create(post_id: 3, tag_id: 1)


