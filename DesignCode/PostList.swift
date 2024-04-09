//
//  PostList.swift
//  DesignCode
//
//  Created by ali rahal on 09/04/2024.
//

import SwiftUI

struct PostList: View {
    @State var posts: [Post] = []
    
    var body: some View {
        List(posts) { post in
            Text(post.title)
        }
        .onAppear {
            Api().getPosts(completion: { posts in
                self.posts = posts
            })
        }
    }
}

struct PostList_Previews: PreviewProvider {
    static var previews: some View {
        PostList()
    }
}
