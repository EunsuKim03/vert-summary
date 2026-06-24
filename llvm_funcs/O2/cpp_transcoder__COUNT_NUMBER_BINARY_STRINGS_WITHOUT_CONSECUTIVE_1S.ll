; ModuleID = 'benchmark/cpp_transcoder/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S/COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = zext i32 %0 to i64
  %3 = alloca i32, i64 %2, align 16
  %4 = alloca i32, i64 %2, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  store i32 1, i32* %3, align 16, !tbaa !5
  %5 = icmp sgt i32 %0, 1
  br i1 %5, label %6, label %29

6:                                                ; preds = %1
  %7 = add nsw i64 %2, -1
  %8 = add nsw i64 %2, -2
  %9 = and i64 %7, 3
  %10 = icmp ult i64 %8, 3
  br i1 %10, label %13, label %11

11:                                               ; preds = %6
  %12 = and i64 %7, -4
  br label %37

13:                                               ; preds = %37, %6
  %14 = phi i32 [ 1, %6 ], [ %50, %37 ]
  %15 = phi i32 [ 1, %6 ], [ %54, %37 ]
  %16 = phi i64 [ 1, %6 ], [ %57, %37 ]
  %17 = icmp eq i64 %9, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %13, %18
  %19 = phi i32 [ %20, %18 ], [ %14, %13 ]
  %20 = phi i32 [ %23, %18 ], [ %15, %13 ]
  %21 = phi i64 [ %26, %18 ], [ %16, %13 ]
  %22 = phi i64 [ %27, %18 ], [ 0, %13 ]
  %23 = add nsw i32 %19, %20
  %24 = getelementptr inbounds i32, i32* %3, i64 %21
  store i32 %23, i32* %24, align 4, !tbaa !5
  %25 = getelementptr inbounds i32, i32* %4, i64 %21
  store i32 %20, i32* %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %21, 1
  %27 = add i64 %22, 1
  %28 = icmp eq i64 %27, %9
  br i1 %28, label %29, label %18, !llvm.loop !9

29:                                               ; preds = %13, %18, %1
  %30 = add nsw i32 %0, -1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %3, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  %34 = getelementptr inbounds i32, i32* %4, i64 %31
  %35 = load i32, i32* %34, align 4, !tbaa !5
  %36 = add nsw i32 %35, %33
  ret i32 %36

37:                                               ; preds = %37, %11
  %38 = phi i32 [ 1, %11 ], [ %50, %37 ]
  %39 = phi i32 [ 1, %11 ], [ %54, %37 ]
  %40 = phi i64 [ 1, %11 ], [ %57, %37 ]
  %41 = phi i64 [ 0, %11 ], [ %58, %37 ]
  %42 = add nsw i32 %38, %39
  %43 = getelementptr inbounds i32, i32* %3, i64 %40
  store i32 %42, i32* %43, align 4, !tbaa !5
  %44 = getelementptr inbounds i32, i32* %4, i64 %40
  store i32 %39, i32* %44, align 4, !tbaa !5
  %45 = add nuw nsw i64 %40, 1
  %46 = add nsw i32 %39, %42
  %47 = getelementptr inbounds i32, i32* %3, i64 %45
  store i32 %46, i32* %47, align 4, !tbaa !5
  %48 = getelementptr inbounds i32, i32* %4, i64 %45
  store i32 %42, i32* %48, align 4, !tbaa !5
  %49 = add nuw nsw i64 %40, 2
  %50 = add nsw i32 %42, %46
  %51 = getelementptr inbounds i32, i32* %3, i64 %49
  store i32 %50, i32* %51, align 4, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %4, i64 %49
  store i32 %46, i32* %52, align 4, !tbaa !5
  %53 = add nuw nsw i64 %40, 3
  %54 = add nsw i32 %46, %50
  %55 = getelementptr inbounds i32, i32* %3, i64 %53
  store i32 %54, i32* %55, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, i32* %4, i64 %53
  store i32 %50, i32* %56, align 4, !tbaa !5
  %57 = add nuw nsw i64 %40, 4
  %58 = add i64 %41, 4
  %59 = icmp eq i64 %58, %12
  br i1 %59, label %13, label %37, !llvm.loop !11
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_NUMBER_BINARY_STRINGS_WITHOUT_CONSECUTIVE_1S_processed.cpp() #4 section ".text.startup" {
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
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
