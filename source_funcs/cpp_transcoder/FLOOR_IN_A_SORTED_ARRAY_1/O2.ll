; ModuleID = 'benchmark/cpp_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/FLOOR_IN_A_SORTED_ARRAY_1/FLOOR_IN_A_SORTED_ARRAY_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FLOOR_IN_A_SORTED_ARRAY_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiiii(i32* noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
  %5 = icmp sgt i32 %1, %2
  br i1 %5, label %40, label %6

6:                                                ; preds = %4, %37
  %7 = phi i32 [ %10, %37 ], [ %2, %4 ]
  %8 = phi i32 [ %38, %37 ], [ %1, %4 ]
  br label %9

9:                                                ; preds = %6, %34
  %10 = phi i32 [ %7, %6 ], [ %35, %34 ]
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %0, i64 %11
  %13 = load i32, i32* %12, align 4, !tbaa !5
  %14 = icmp sgt i32 %13, %3
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = add nsw i32 %10, %8
  %17 = sdiv i32 %16, 2
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %0, i64 %18
  %20 = load i32, i32* %19, align 4, !tbaa !5
  %21 = icmp eq i32 %20, %3
  br i1 %21, label %40, label %22

22:                                               ; preds = %15
  %23 = icmp sgt i32 %16, 1
  br i1 %23, label %24, label %32

24:                                               ; preds = %22
  %25 = add nsw i32 %17, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %0, i64 %26
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = icmp sle i32 %28, %3
  %30 = icmp sgt i32 %20, %3
  %31 = select i1 %29, i1 %30, i1 false
  br i1 %31, label %40, label %32

32:                                               ; preds = %24, %22
  %33 = icmp sgt i32 %20, %3
  br i1 %33, label %34, label %37

34:                                               ; preds = %32
  %35 = add nsw i32 %17, -1
  %36 = icmp slt i32 %8, %17
  br i1 %36, label %9, label %40

37:                                               ; preds = %32
  %38 = add nsw i32 %17, 1
  %39 = icmp slt i32 %17, %10
  br i1 %39, label %6, label %40

40:                                               ; preds = %37, %34, %9, %24, %15, %4
  %41 = phi i32 [ -1, %4 ], [ %17, %15 ], [ %25, %24 ], [ %10, %9 ], [ -1, %34 ], [ -1, %37 ]
  ret i32 %41
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FLOOR_IN_A_SORTED_ARRAY_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
