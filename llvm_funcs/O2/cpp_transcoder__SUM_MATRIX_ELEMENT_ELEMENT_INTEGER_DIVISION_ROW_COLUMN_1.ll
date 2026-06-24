; ModuleID = 'benchmark/cpp_transcoder/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_1/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_1/SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = icmp sgt i32 %0, 0
  br i1 %2, label %5, label %3

3:                                                ; preds = %45, %37, %1
  %4 = phi i32 [ 0, %1 ], [ %39, %37 ], [ %54, %45 ]
  ret i32 %4

5:                                                ; preds = %1
  %6 = icmp ult i32 %0, 8
  br i1 %6, label %41, label %7

7:                                                ; preds = %5
  %8 = and i32 %0, -8
  %9 = or i32 %8, 1
  %10 = insertelement <4 x i32> poison, i32 %0, i64 0
  %11 = shufflevector <4 x i32> %10, <4 x i32> poison, <4 x i32> zeroinitializer
  %12 = insertelement <4 x i32> poison, i32 %0, i64 0
  %13 = shufflevector <4 x i32> %12, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %14

14:                                               ; preds = %14, %7
  %15 = phi i32 [ 0, %7 ], [ %33, %14 ]
  %16 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %7 ], [ %34, %14 ]
  %17 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %7 ], [ %35, %14 ]
  %18 = phi <4 x i32> [ zeroinitializer, %7 ], [ %31, %14 ]
  %19 = phi <4 x i32> [ zeroinitializer, %7 ], [ %32, %14 ]
  %20 = add <4 x i32> %16, <i32 4, i32 4, i32 4, i32 4>
  %21 = add <4 x i32> %17, <i32 4, i32 4, i32 4, i32 4>
  %22 = add <4 x i32> %17, <i32 5, i32 5, i32 5, i32 5>
  %23 = icmp sgt <4 x i32> %11, %17
  %24 = icmp sgt <4 x i32> %22, %13
  %25 = sub nsw <4 x i32> %11, %17
  %26 = sub nsw <4 x i32> %13, %21
  %27 = select <4 x i1> %23, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %25
  %28 = select <4 x i1> %24, <4 x i32> %26, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %29 = mul nsw <4 x i32> %27, %16
  %30 = mul nsw <4 x i32> %28, %20
  %31 = add <4 x i32> %29, %18
  %32 = add <4 x i32> %30, %19
  %33 = add nuw i32 %15, 8
  %34 = add <4 x i32> %16, <i32 8, i32 8, i32 8, i32 8>
  %35 = add <4 x i32> %17, <i32 8, i32 8, i32 8, i32 8>
  %36 = icmp eq i32 %33, %8
  br i1 %36, label %37, label %14, !llvm.loop !5

37:                                               ; preds = %14
  %38 = add <4 x i32> %32, %31
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %38)
  %40 = icmp eq i32 %8, %0
  br i1 %40, label %3, label %41, !llvm.loop !8

41:                                               ; preds = %5, %37
  %42 = phi i32 [ 1, %5 ], [ %9, %37 ]
  %43 = phi i32 [ 0, %5 ], [ %8, %37 ]
  %44 = phi i32 [ 0, %5 ], [ %39, %37 ]
  br label %45

45:                                               ; preds = %41, %45
  %46 = phi i32 [ %55, %45 ], [ %42, %41 ]
  %47 = phi i32 [ %49, %45 ], [ %43, %41 ]
  %48 = phi i32 [ %54, %45 ], [ %44, %41 ]
  %49 = add nsw i32 %47, 1
  %50 = icmp slt i32 %47, %0
  %51 = sub nsw i32 %0, %47
  %52 = select i1 %50, i32 1, i32 %51
  %53 = mul nsw i32 %52, %46
  %54 = add nsw i32 %53, %48
  %55 = add nuw nsw i32 %46, 1
  %56 = icmp slt i32 %49, %0
  br i1 %56, label %45, label %3, !llvm.loop !8
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_MATRIX_ELEMENT_ELEMENT_INTEGER_DIVISION_ROW_COLUMN_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.isvectorized", i32 1}
!8 = distinct !{!8, !6}
