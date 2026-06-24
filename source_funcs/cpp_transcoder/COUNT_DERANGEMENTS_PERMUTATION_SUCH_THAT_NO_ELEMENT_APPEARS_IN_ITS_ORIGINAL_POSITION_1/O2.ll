; ModuleID = 'benchmark/cpp_transcoder/COUNT_DERANGEMENTS_PERMUTATION_SUCH_THAT_NO_ELEMENT_APPEARS_IN_ITS_ORIGINAL_POSITION_1/COUNT_DERANGEMENTS_PERMUTATION_SUCH_THAT_NO_ELEMENT_APPEARS_IN_ITS_ORIGINAL_POSITION_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/COUNT_DERANGEMENTS_PERMUTATION_SUCH_THAT_NO_ELEMENT_APPEARS_IN_ITS_ORIGINAL_POSITION_1/COUNT_DERANGEMENTS_PERMUTATION_SUCH_THAT_NO_ELEMENT_APPEARS_IN_ITS_ORIGINAL_POSITION_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_DERANGEMENTS_PERMUTATION_SUCH_THAT_NO_ELEMENT_APPEARS_IN_ITS_ORIGINAL_POSITION_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca i32, i64 %3, align 16
  store i32 1, i32* %4, align 16, !tbaa !5
  %5 = getelementptr inbounds i32, i32* %4, i64 1
  store i32 0, i32* %5, align 4, !tbaa !5
  %6 = getelementptr inbounds i32, i32* %4, i64 2
  store i32 1, i32* %6, align 8, !tbaa !5
  %7 = icmp slt i32 %0, 3
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds i32, i32* %4, i64 3
  store i32 2, i32* %9, align 4, !tbaa !5
  %10 = icmp eq i32 %2, 4
  br i1 %10, label %30, label %11, !llvm.loop !9

11:                                               ; preds = %8
  %12 = and i64 %3, 1
  %13 = icmp eq i32 %2, 5
  br i1 %13, label %17, label %14

14:                                               ; preds = %11
  %15 = add nsw i64 %3, -4
  %16 = and i64 %15, -2
  br label %34

17:                                               ; preds = %34, %11
  %18 = phi i64 [ 4, %11 ], [ %53, %34 ]
  %19 = phi i32 [ 2, %11 ], [ %51, %34 ]
  %20 = phi i64 [ 2, %11 ], [ %35, %34 ]
  %21 = icmp eq i64 %12, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds i32, i32* %4, i64 %20
  %24 = load i32, i32* %23, align 8, !tbaa !5
  %25 = add nsw i32 %24, %19
  %26 = trunc i64 %18 to i32
  %27 = add i32 %26, -1
  %28 = mul nsw i32 %25, %27
  %29 = getelementptr inbounds i32, i32* %4, i64 %18
  store i32 %28, i32* %29, align 4, !tbaa !5
  br label %30

30:                                               ; preds = %22, %17, %8, %1
  %31 = sext i32 %0 to i64
  %32 = getelementptr inbounds i32, i32* %4, i64 %31
  %33 = load i32, i32* %32, align 4, !tbaa !5
  ret i32 %33

34:                                               ; preds = %34, %14
  %35 = phi i64 [ 4, %14 ], [ %53, %34 ]
  %36 = phi i32 [ 2, %14 ], [ %51, %34 ]
  %37 = phi i64 [ 2, %14 ], [ %35, %34 ]
  %38 = phi i64 [ 0, %14 ], [ %54, %34 ]
  %39 = getelementptr inbounds i32, i32* %4, i64 %37
  %40 = load i32, i32* %39, align 8, !tbaa !5
  %41 = add nsw i32 %40, %36
  %42 = add nsw i64 %35, -1
  %43 = trunc i64 %42 to i32
  %44 = mul nsw i32 %41, %43
  %45 = getelementptr inbounds i32, i32* %4, i64 %35
  store i32 %44, i32* %45, align 8, !tbaa !5
  %46 = or i64 %35, 1
  %47 = getelementptr inbounds i32, i32* %4, i64 %42
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = add nsw i32 %48, %44
  %50 = trunc i64 %35 to i32
  %51 = mul nsw i32 %49, %50
  %52 = getelementptr inbounds i32, i32* %4, i64 %46
  store i32 %51, i32* %52, align 4, !tbaa !5
  %53 = add nuw nsw i64 %35, 2
  %54 = add i64 %38, 2
  %55 = icmp eq i64 %54, %16
  br i1 %55, label %17, label %34, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_DERANGEMENTS_PERMUTATION_SUCH_THAT_NO_ELEMENT_APPEARS_IN_ITS_ORIGINAL_POSITION_1_processed.cpp() #4 section ".text.startup" {
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
