; ModuleID = 'llvm/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY/FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp slt i32 %1, 3
  br i1 %3, label %51, label %4

4:                                                ; preds = %2
  %5 = add i32 %1, -2
  %6 = add i32 %1, -1
  %7 = sext i32 %6 to i64
  %8 = zext i32 %5 to i64
  %9 = zext i32 %6 to i64
  br label %15

10:                                               ; preds = %24, %15
  %11 = phi i32 [ %19, %15 ], [ %25, %24 ]
  %12 = add nuw nsw i64 %18, 1
  %13 = add nuw nsw i64 %17, 1
  %14 = icmp eq i64 %20, %8
  br i1 %14, label %51, label %15, !llvm.loop !5

15:                                               ; preds = %4, %10
  %16 = phi i64 [ 0, %4 ], [ %20, %10 ]
  %17 = phi i64 [ 1, %4 ], [ %13, %10 ]
  %18 = phi i64 [ 2, %4 ], [ %12, %10 ]
  %19 = phi i32 [ -2147483648, %4 ], [ %11, %10 ]
  %20 = add nuw nsw i64 %16, 1
  %21 = icmp slt i64 %20, %7
  br i1 %21, label %22, label %10

22:                                               ; preds = %15
  %23 = getelementptr inbounds i32, i32* %0, i64 %16
  br label %28

24:                                               ; preds = %40, %28
  %25 = phi i32 [ %31, %28 ], [ %47, %40 ]
  %26 = add nuw nsw i64 %30, 1
  %27 = icmp eq i64 %32, %9
  br i1 %27, label %10, label %28, !llvm.loop !8

28:                                               ; preds = %22, %24
  %29 = phi i64 [ %17, %22 ], [ %32, %24 ]
  %30 = phi i64 [ %18, %22 ], [ %26, %24 ]
  %31 = phi i32 [ %19, %22 ], [ %25, %24 ]
  %32 = add nuw nsw i64 %29, 1
  %33 = trunc i64 %32 to i32
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %35, label %24

35:                                               ; preds = %28
  %36 = load i32, i32* %23, align 4, !tbaa !9
  %37 = getelementptr inbounds i32, i32* %0, i64 %29
  %38 = load i32, i32* %37, align 4, !tbaa !9
  %39 = mul nsw i32 %38, %36
  br label %40

40:                                               ; preds = %35, %40
  %41 = phi i64 [ %30, %35 ], [ %48, %40 ]
  %42 = phi i32 [ %31, %35 ], [ %47, %40 ]
  %43 = getelementptr inbounds i32, i32* %0, i64 %41
  %44 = load i32, i32* %43, align 4, !tbaa !9
  %45 = mul nsw i32 %39, %44
  %46 = icmp slt i32 %42, %45
  %47 = select i1 %46, i32 %45, i32 %42
  %48 = add nuw nsw i64 %41, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp slt i32 %49, %1
  br i1 %50, label %40, label %24, !llvm.loop !13

51:                                               ; preds = %10, %2
  %52 = phi i32 [ -1, %2 ], [ %11, %10 ]
  ret i32 %52
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_FIND_MAXIMUM_PRODUCT_OF_A_TRIPLET_IN_ARRAY_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!5 = distinct !{!5, !6, !7}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!"llvm.loop.unroll.disable"}
!8 = distinct !{!8, !6, !7}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C++ TBAA"}
!13 = distinct !{!13, !6, !7}
