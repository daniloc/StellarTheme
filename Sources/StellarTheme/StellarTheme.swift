//
//  StellarTheme.swift
//
//  Created by Danilo Campos on 1/1/20.
//

import Foundation
import Publish
import Plot

public extension Theme {
    
    static var stellar: Self {
        Theme(
            htmlFactory: StellarHTMLFactory(),
            resourcePaths: ["Resources/css/main.css", "Resources/css/images/overlay.png", "Resources/css/fontawesome-all.min.css"]
        )
    }
}

private struct StellarHTMLFactory<Site: Website>: HTMLFactory {
    func makeSectionHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML()
    }
    
    func makeItemHTML(for item: Item<Site>, context: PublishingContext<Site>) throws -> HTML {
        HTML()
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<Site>) throws -> HTML {
        HTML()
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Site>) throws -> HTML? {
        HTML()
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Site>) throws -> HTML? {
        HTML()
    }
    
    fileprivate func makeIndexHTML(for index: Index,
                                   context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .lang(context.site.language),
            .head(for: index, on: context.site),
            .body(
                .div(
                    .class("wrapper"),
                    .header(
                        .span(.class("logo"),
                              .img(.src(context.site.imagePath ?? ""))
                        ),
                        .h1(.text(index.title)),
                        .p(
                            .class("description"),
                            .text(context.site.description)
                        )
                    )
                    
                )
            )
        )
    }
}

private extension Node where Context == HTML.BodyContext {
    
}
