; ModuleID = 'benchmark/cpp_transcoder/COIN_GAME_WINNER_EVERY_PLAYER_THREE_CHOICES/COIN_GAME_WINNER_EVERY_PLAYER_THREE_CHOICES_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COIN_GAME_WINNER_EVERY_PLAYER_THREE_CHOICES/COIN_GAME_WINNER_EVERY_PLAYER_THREE_CHOICES_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COIN_GAME_WINNER_EVERY_PLAYER_THREE_CHOICES_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = alloca i32, i64 %5, align 16
  store i32 0, i32* %6, align 16, !tbaa !5
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32 1, i32* %7, align 4, !tbaa !5
  %8 = icmp slt i32 %2, 2
  br i1 %8, label %12, label %9

9:                                                ; preds = %3
  %10 = sext i32 %0 to i64
  %11 = sext i32 %1 to i64
  br label %16

12:                                               ; preds = %37, %3
  %13 = sext i32 %2 to i64
  %14 = getelementptr inbounds i32, i32* %6, i64 %13
  %15 = load i32, i32* %14, align 4, !tbaa !5
  ret i32 %15

16:                                               ; preds = %9, %37
  %17 = phi i32 [ 1, %9 ], [ %38, %37 ]
  %18 = phi i64 [ 2, %9 ], [ %40, %37 ]
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %37, label %20

20:                                               ; preds = %16
  %21 = sub nsw i64 %18, %10
  %22 = icmp sgt i64 %21, -1
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = and i64 %21, 4294967295
  %25 = getelementptr inbounds i32, i32* %6, i64 %24
  %26 = load i32, i32* %25, align 4, !tbaa !5
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23, %20
  %29 = sub nsw i64 %18, %11
  %30 = icmp sgt i64 %29, -1
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = and i64 %29, 4294967295
  %33 = getelementptr inbounds i32, i32* %6, i64 %32
  %34 = load i32, i32* %33, align 4, !tbaa !5
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %28
  br label %37

37:                                               ; preds = %31, %23, %16, %36
  %38 = phi i32 [ 0, %36 ], [ 1, %16 ], [ 1, %23 ], [ 1, %31 ]
  %39 = getelementptr inbounds i32, i32* %6, i64 %18
  store i32 %38, i32* %39, align 4, !tbaa !5
  %40 = add nuw nsw i64 %18, 1
  %41 = icmp eq i64 %40, %5
  br i1 %41, label %12, label %16, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COIN_GAME_WINNER_EVERY_PLAYER_THREE_CHOICES_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
