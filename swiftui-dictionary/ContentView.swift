//
//  ContentView.swift
//  swiftui-dictionary
//
//  Created by Atsuki Kakehi on 2021/12/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            NavigationView {
                List(samples) { sample in
                    NavigationLink(sample.title, destination: sample.desinationView)
                }
            }
        }
    }
}

struct Sample: Identifiable {
    let id = UUID()
    let title: String
    let desinationView: AnyView?
}

let samples:[Sample] = [
    Sample(title: "DashedLineSample", desinationView: AnyView(DashedLineSample())),
    Sample(title: "--------------------------------------", desinationView: nil),
    Sample(title: "SyncColumnWidthSample", desinationView: AnyView(SyncColumnWidthSample())),
    Sample(title: "GeometryPreferenceSample", desinationView: AnyView(GeometryPreferenceSample())),
    Sample(title: "AnchorPreferenceSample", desinationView: AnyView(AnchorPreferenceSample())),
    Sample(title: "NestedViewPreferenceSample", desinationView: AnyView(NestedViewPreferenceSample())),
    Sample(title: "SetPositionToCenterExample", desinationView: AnyView(SetPositionToCenterExample())),
    Sample(title: "PositionChangeExample", desinationView: AnyView(PositionChangeExample())),
    Sample(title: "--------------------------------------", desinationView: nil),
    Sample(title: "TrackableScrollViewSample todo implement", desinationView: AnyView(TrackableScrollViewSample())),
    Sample(title: "--------------------------------------", desinationView: nil),
    Sample(title: "FeaturedItem", desinationView: AnyView(FeaturedItem())),
    Sample(title: "TabbedFeaturedItems", desinationView: AnyView(TabbedFeaturedItems())),
    Sample(title: "Rotation3DEffectTab", desinationView: AnyView(Rotation3DEffectTab())),
    Sample(title: "--------------------------------------", desinationView: nil),
    Sample(title: "DragGesture Basic", desinationView: AnyView(DragGestureBasic())),
    Sample(title: "DragGestureAutoPositionChange \n AnchorPreferenceによる座標取得とドラッグジェスチャーでの座標による制御処理", desinationView: AnyView(DragGestureAutoPositionChange())),
    Sample(title: "--------------------------------------", desinationView: nil),
    Sample(title: "Replace Animation API from iOS15", desinationView: AnyView(AnimationUpdateSample())),
    Sample(title: "LeaningCardSample \n 斜めのカードUI", desinationView: AnyView(LeaningCardSample())),
    Sample(title: "StackLayoutSample\n 重なったカードUI", desinationView: AnyView(StackLayoutSample())),
    Sample(title: "LeaningStackSample\n 斜めのカードが重なったUI", desinationView: AnyView(LeaningStackSample())),
    Sample(title: "StackCardsAnimationSample \n 重なったカードのアニメーション", desinationView: AnyView(StackCardsAnimationSample())),
    Sample(title: "StackCardsAnimationAndDragGestureSample \n 重なったカードのアニメーション&ドラッグジェスチャー ", desinationView: AnyView(StackCardsAnimationAndDragGestureSample()))
]

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
.previewInterfaceOrientation(.portraitUpsideDown)
    }
}
