; ModuleID = 'benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1/DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = add i32 %2, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %5
  %9 = alloca i8, i64 %8, align 16
  %10 = icmp slt i32 %1, 0
  br i1 %10, label %28, label %11

11:                                               ; preds = %3
  %12 = add nsw i64 %5, -1
  %13 = and i64 %5, 3
  %14 = icmp ult i64 %12, 3
  br i1 %14, label %17, label %15

15:                                               ; preds = %11
  %16 = and i64 %5, 4294967292
  br label %33

17:                                               ; preds = %33, %11
  %18 = phi i64 [ 0, %11 ], [ %47, %33 ]
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %28, label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ %25, %20 ], [ %18, %17 ]
  %22 = phi i64 [ %26, %20 ], [ 0, %17 ]
  %23 = mul nuw nsw i64 %21, %7
  %24 = getelementptr inbounds i8, i8* %9, i64 %23
  store i8 1, i8* %24, align 1, !tbaa !5
  %25 = add nuw nsw i64 %21, 1
  %26 = add i64 %22, 1
  %27 = icmp eq i64 %26, %13
  br i1 %27, label %28, label %20, !llvm.loop !9

28:                                               ; preds = %17, %20, %3
  %29 = icmp slt i32 %2, 1
  br i1 %29, label %50, label %30

30:                                               ; preds = %28
  %31 = getelementptr inbounds i8, i8* %9, i64 1
  %32 = zext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 %31, i8 0, i64 %32, i1 false), !tbaa !5
  br label %50

33:                                               ; preds = %33, %15
  %34 = phi i64 [ 0, %15 ], [ %47, %33 ]
  %35 = phi i64 [ 0, %15 ], [ %48, %33 ]
  %36 = mul nuw nsw i64 %34, %7
  %37 = getelementptr inbounds i8, i8* %9, i64 %36
  store i8 1, i8* %37, align 4, !tbaa !5
  %38 = or i64 %34, 1
  %39 = mul nuw nsw i64 %38, %7
  %40 = getelementptr inbounds i8, i8* %9, i64 %39
  store i8 1, i8* %40, align 1, !tbaa !5
  %41 = or i64 %34, 2
  %42 = mul nuw nsw i64 %41, %7
  %43 = getelementptr inbounds i8, i8* %9, i64 %42
  store i8 1, i8* %43, align 2, !tbaa !5
  %44 = or i64 %34, 3
  %45 = mul nuw nsw i64 %44, %7
  %46 = getelementptr inbounds i8, i8* %9, i64 %45
  store i8 1, i8* %46, align 1, !tbaa !5
  %47 = add nuw nsw i64 %34, 4
  %48 = add i64 %35, 4
  %49 = icmp eq i64 %48, %16
  br i1 %49, label %17, label %33, !llvm.loop !11

50:                                               ; preds = %30, %28
  %51 = icmp slt i32 %1, 1
  br i1 %51, label %63, label %52

52:                                               ; preds = %50, %71
  %53 = phi i64 [ %72, %71 ], [ 1, %50 ]
  br i1 %29, label %71, label %54

54:                                               ; preds = %52
  %55 = add nsw i64 %53, -1
  %56 = getelementptr inbounds i32, i32* %0, i64 %55
  %57 = load i32, i32* %56, align 4, !tbaa !13
  %58 = mul nuw nsw i64 %55, %7
  %59 = getelementptr inbounds i8, i8* %9, i64 %58
  %60 = mul nuw nsw i64 %53, %7
  %61 = getelementptr inbounds i8, i8* %9, i64 %60
  %62 = sext i32 %57 to i64
  br label %74

63:                                               ; preds = %71, %50
  %64 = sext i32 %1 to i64
  %65 = mul nsw i64 %7, %64
  %66 = getelementptr inbounds i8, i8* %9, i64 %65
  %67 = sext i32 %2 to i64
  %68 = getelementptr inbounds i8, i8* %66, i64 %67
  %69 = load i8, i8* %68, align 1, !tbaa !5, !range !15
  %70 = zext i8 %69 to i32
  ret i32 %70

71:                                               ; preds = %92, %52
  %72 = add nuw nsw i64 %53, 1
  %73 = icmp eq i64 %72, %5
  br i1 %73, label %63, label %52, !llvm.loop !16

74:                                               ; preds = %54, %92
  %75 = phi i64 [ 1, %54 ], [ %93, %92 ]
  %76 = icmp slt i64 %75, %62
  %77 = getelementptr inbounds i8, i8* %59, i64 %75
  %78 = load i8, i8* %77, align 1, !tbaa !5, !range !15
  br i1 %76, label %79, label %81

79:                                               ; preds = %74
  %80 = getelementptr inbounds i8, i8* %61, i64 %75
  store i8 %78, i8* %80, align 1, !tbaa !5
  br label %92

81:                                               ; preds = %74
  %82 = icmp eq i8 %78, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %81
  %84 = sub nsw i64 %75, %62
  %85 = getelementptr inbounds i8, i8* %59, i64 %84
  %86 = load i8, i8* %85, align 1, !tbaa !5, !range !15
  %87 = icmp ne i8 %86, 0
  br label %88

88:                                               ; preds = %83, %81
  %89 = phi i1 [ true, %81 ], [ %87, %83 ]
  %90 = getelementptr inbounds i8, i8* %61, i64 %75
  %91 = zext i1 %89 to i8
  store i8 %91, i8* %90, align 1, !tbaa !5
  br label %92

92:                                               ; preds = %79, %88
  %93 = add nuw nsw i64 %75, 1
  %94 = icmp eq i64 %93, %7
  br i1 %94, label %71, label %74, !llvm.loop !17
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SUBSET_SUM_PROBLEM_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = !{i8 0, i8 2}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
