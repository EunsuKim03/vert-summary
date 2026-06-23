; ModuleID = 'benchmark/cpp_transcoder/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp slt i32 %0, 1
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = add i32 %0, -1
  %5 = and i32 %0, 3
  %6 = icmp ult i32 %4, 3
  %7 = and i32 %0, -4
  %8 = icmp eq i32 %5, 0
  br label %9

9:                                                ; preds = %3, %27
  %10 = phi i32 [ %29, %27 ], [ 1, %3 ]
  %11 = phi i32 [ %28, %27 ], [ 0, %3 ]
  br i1 %6, label %14, label %31

12:                                               ; preds = %27, %1
  %13 = phi i32 [ 0, %1 ], [ %28, %27 ]
  ret i32 %13

14:                                               ; preds = %31, %9
  %15 = phi i32 [ undef, %9 ], [ %45, %31 ]
  %16 = phi i32 [ 1, %9 ], [ %46, %31 ]
  %17 = phi i32 [ %11, %9 ], [ %45, %31 ]
  br i1 %8, label %27, label %18

18:                                               ; preds = %14, %18
  %19 = phi i32 [ %24, %18 ], [ %16, %14 ]
  %20 = phi i32 [ %23, %18 ], [ %17, %14 ]
  %21 = phi i32 [ %25, %18 ], [ 0, %14 ]
  %22 = udiv i32 %10, %19
  %23 = add nsw i32 %22, %20
  %24 = add nuw i32 %19, 1
  %25 = add i32 %21, 1
  %26 = icmp eq i32 %25, %5
  br i1 %26, label %27, label %18, !llvm.loop !5

27:                                               ; preds = %18, %14
  %28 = phi i32 [ %15, %14 ], [ %23, %18 ]
  %29 = add nuw i32 %10, 1
  %30 = icmp eq i32 %10, %0
  br i1 %30, label %12, label %9, !llvm.loop !7

31:                                               ; preds = %9, %31
  %32 = phi i32 [ %46, %31 ], [ 1, %9 ]
  %33 = phi i32 [ %45, %31 ], [ %11, %9 ]
  %34 = phi i32 [ %47, %31 ], [ 0, %9 ]
  %35 = udiv i32 %10, %32
  %36 = add nsw i32 %35, %33
  %37 = add nuw nsw i32 %32, 1
  %38 = udiv i32 %10, %37
  %39 = add nsw i32 %38, %36
  %40 = add nuw nsw i32 %32, 2
  %41 = udiv i32 %10, %40
  %42 = add nsw i32 %41, %39
  %43 = add nuw i32 %32, 3
  %44 = udiv i32 %10, %43
  %45 = add nsw i32 %44, %42
  %46 = add nuw i32 %32, 4
  %47 = add i32 %34, 4
  %48 = icmp eq i32 %47, %7
  br i1 %48, label %14, label %31, !llvm.loop !9
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_processed.cpp() #4 section ".text.startup" {
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
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
