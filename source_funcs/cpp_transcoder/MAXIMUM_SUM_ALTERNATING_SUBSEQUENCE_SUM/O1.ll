; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM/MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp eq i32 %1, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = load i32, i32* %0, align 4, !tbaa !5
  br label %75

6:                                                ; preds = %2
  %7 = zext i32 %1 to i64
  %8 = call i8* @llvm.stacksave()
  %9 = alloca i32, i64 %7, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)
  %12 = alloca i32, i64 %7, align 16
  %13 = bitcast i32* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %13, i8 0, i64 %11, i1 false)
  %14 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %14, i32* %12, align 16, !tbaa !5
  store i32 %14, i32* %9, align 16, !tbaa !5
  %15 = icmp sgt i32 %1, 1
  br i1 %15, label %16, label %25

16:                                               ; preds = %6
  %17 = zext i32 %1 to i64
  br label %18

18:                                               ; preds = %16, %29
  %19 = phi i64 [ 1, %16 ], [ %30, %29 ]
  %20 = phi i32 [ 0, %16 ], [ %57, %29 ]
  %21 = getelementptr inbounds i32, i32* %0, i64 %19
  %22 = load i32, i32* %21, align 4, !tbaa !5
  %23 = getelementptr inbounds i32, i32* %12, i64 %19
  %24 = getelementptr inbounds i32, i32* %9, i64 %19
  br label %32

25:                                               ; preds = %29, %6
  %26 = icmp sgt i32 %1, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %25
  %28 = zext i32 %1 to i64
  br label %62

29:                                               ; preds = %56
  %30 = add nuw nsw i64 %19, 1
  %31 = icmp eq i64 %30, %17
  br i1 %31, label %25, label %18, !llvm.loop !9

32:                                               ; preds = %18, %56
  %33 = phi i64 [ 0, %18 ], [ %58, %56 ]
  %34 = phi i32 [ %20, %18 ], [ %57, %56 ]
  %35 = getelementptr inbounds i32, i32* %0, i64 %33
  %36 = load i32, i32* %35, align 4, !tbaa !5
  %37 = icmp sgt i32 %36, %22
  br i1 %37, label %38, label %45

38:                                               ; preds = %32
  %39 = getelementptr inbounds i32, i32* %12, i64 %33
  %40 = load i32, i32* %39, align 4, !tbaa !5
  %41 = add nsw i32 %40, %22
  %42 = load i32, i32* %24, align 4, !tbaa !5
  %43 = icmp slt i32 %42, %41
  %44 = select i1 %43, i32 %41, i32 %42
  store i32 %44, i32* %24, align 4, !tbaa !5
  br label %56

45:                                               ; preds = %32
  %46 = icmp slt i32 %36, %22
  %47 = icmp eq i32 %34, 1
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = getelementptr inbounds i32, i32* %9, i64 %33
  %51 = load i32, i32* %50, align 4, !tbaa !5
  %52 = add nsw i32 %51, %22
  %53 = load i32, i32* %23, align 4, !tbaa !5
  %54 = icmp slt i32 %53, %52
  %55 = select i1 %54, i32 %52, i32 %53
  store i32 %55, i32* %23, align 4, !tbaa !5
  br label %56

56:                                               ; preds = %38, %49, %45
  %57 = phi i32 [ 1, %38 ], [ 1, %49 ], [ %34, %45 ]
  %58 = add nuw nsw i64 %33, 1
  %59 = icmp eq i64 %58, %19
  br i1 %59, label %29, label %32, !llvm.loop !12

60:                                               ; preds = %62, %25
  %61 = phi i32 [ -2147483648, %25 ], [ %72, %62 ]
  call void @llvm.stackrestore(i8* %8)
  br label %75

62:                                               ; preds = %27, %62
  %63 = phi i64 [ 0, %27 ], [ %73, %62 ]
  %64 = phi i32 [ -2147483648, %27 ], [ %72, %62 ]
  %65 = getelementptr inbounds i32, i32* %12, i64 %63
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = icmp slt i32 %64, %66
  %68 = select i1 %67, i32 %66, i32 %64
  %69 = getelementptr inbounds i32, i32* %9, i64 %63
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = icmp slt i32 %68, %70
  %72 = select i1 %71, i32 %70, i32 %68
  %73 = add nuw nsw i64 %63, 1
  %74 = icmp eq i64 %73, %28
  br i1 %74, label %60, label %62, !llvm.loop !13

75:                                               ; preds = %60, %4
  %76 = phi i32 [ %5, %4 ], [ %61, %60 ]
  ret i32 %76
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_ALTERNATING_SUBSEQUENCE_SUM_reprocessed.cpp() #6 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
