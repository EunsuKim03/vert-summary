; ModuleID = 'benchmark/cpp_transcoder/DELANNOY_NUMBER_1/DELANNOY_NUMBER_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DELANNOY_NUMBER_1/DELANNOY_NUMBER_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DELANNOY_NUMBER_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add nsw i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %0, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %4, %6
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = add i32 %1, 1
  %12 = zext i32 %11 to i64
  br label %18

13:                                               ; preds = %18, %2
  %14 = icmp slt i32 %1, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %13
  %16 = add i32 %1, 1
  %17 = zext i32 %16 to i64
  br label %31

18:                                               ; preds = %10, %18
  %19 = phi i64 [ 0, %10 ], [ %22, %18 ]
  %20 = mul nuw nsw i64 %19, %6
  %21 = getelementptr inbounds i32, i32* %8, i64 %20
  store i32 1, i32* %21, align 4, !tbaa !5
  %22 = add nuw nsw i64 %19, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %13, label %18, !llvm.loop !9

24:                                               ; preds = %31, %13
  %25 = icmp slt i32 %1, 1
  br i1 %25, label %49, label %26

26:                                               ; preds = %24
  %27 = icmp slt i32 %0, 1
  %28 = add i32 %1, 1
  %29 = zext i32 %28 to i64
  %30 = zext i32 %5 to i64
  br label %36

31:                                               ; preds = %15, %31
  %32 = phi i64 [ 0, %15 ], [ %34, %31 ]
  %33 = getelementptr inbounds i32, i32* %8, i64 %32
  store i32 1, i32* %33, align 4, !tbaa !5
  %34 = add nuw nsw i64 %32, 1
  %35 = icmp eq i64 %34, %17
  br i1 %35, label %24, label %31, !llvm.loop !12

36:                                               ; preds = %26, %56
  %37 = phi i64 [ 0, %26 ], [ %59, %56 ]
  %38 = phi i64 [ 1, %26 ], [ %57, %56 ]
  br i1 %27, label %56, label %39

39:                                               ; preds = %36
  %40 = mul i64 %37, %6
  %41 = add i64 %40, %6
  %42 = getelementptr i32, i32* %8, i64 %41
  %43 = add nsw i64 %38, -1
  %44 = mul nuw nsw i64 %43, %6
  %45 = getelementptr inbounds i32, i32* %8, i64 %44
  %46 = mul nuw nsw i64 %38, %6
  %47 = getelementptr inbounds i32, i32* %8, i64 %46
  %48 = load i32, i32* %42, align 4
  br label %60

49:                                               ; preds = %56, %24
  %50 = sext i32 %1 to i64
  %51 = mul nsw i64 %50, %6
  %52 = getelementptr inbounds i32, i32* %8, i64 %51
  %53 = sext i32 %0 to i64
  %54 = getelementptr inbounds i32, i32* %52, i64 %53
  %55 = load i32, i32* %54, align 4, !tbaa !5
  ret i32 %55

56:                                               ; preds = %60, %36
  %57 = add nuw nsw i64 %38, 1
  %58 = icmp eq i64 %57, %29
  %59 = add i64 %37, 1
  br i1 %58, label %49, label %36, !llvm.loop !13

60:                                               ; preds = %39, %60
  %61 = phi i32 [ %48, %39 ], [ %69, %60 ]
  %62 = phi i64 [ 1, %39 ], [ %71, %60 ]
  %63 = getelementptr inbounds i32, i32* %45, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !5
  %65 = add nsw i64 %62, -1
  %66 = getelementptr inbounds i32, i32* %45, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %68 = add nsw i32 %67, %64
  %69 = add nsw i32 %68, %61
  %70 = getelementptr inbounds i32, i32* %47, i64 %62
  store i32 %69, i32* %70, align 4, !tbaa !5
  %71 = add nuw nsw i64 %62, 1
  %72 = icmp eq i64 %71, %30
  br i1 %72, label %56, label %60, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DELANNOY_NUMBER_1_processed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
