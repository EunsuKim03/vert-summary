; ModuleID = 'llvm/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/LENGTH_LONGEST_BALANCED_SUBSEQUENCE/LENGTH_LONGEST_BALANCED_SUBSEQUENCE_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_LENGTH_LONGEST_BALANCED_SUBSEQUENCE_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPci(i8* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = zext i32 %1 to i64
  %4 = mul nuw i64 %3, %3
  %5 = alloca i32, i64 %4, align 16
  %6 = bitcast i32* %5 to i8*
  %7 = shl nuw i64 %4, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %6, i8 0, i64 %7, i1 false)
  %8 = add i32 %1, -1
  %9 = icmp sgt i32 %1, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = zext i32 %8 to i64
  br label %17

12:                                               ; preds = %31, %2
  %13 = icmp sgt i32 %1, 2
  br i1 %13, label %14, label %38

14:                                               ; preds = %12
  %15 = add i32 %1, -2
  %16 = zext i32 %1 to i64
  br label %34

17:                                               ; preds = %10, %31
  %18 = phi i64 [ 0, %10 ], [ %32, %31 ]
  %19 = getelementptr inbounds i8, i8* %0, i64 %18
  %20 = load i8, i8* %19, align 1, !tbaa !5
  %21 = icmp eq i8 %20, 40
  br i1 %21, label %22, label %31

22:                                               ; preds = %17
  %23 = add nuw nsw i64 %18, 1
  %24 = getelementptr inbounds i8, i8* %0, i64 %23
  %25 = load i8, i8* %24, align 1, !tbaa !5
  %26 = icmp eq i8 %25, 41
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = mul nuw nsw i64 %18, %3
  %29 = getelementptr inbounds i32, i32* %5, i64 %28
  %30 = getelementptr inbounds i32, i32* %29, i64 %23
  store i32 2, i32* %30, align 4, !tbaa !8
  br label %31

31:                                               ; preds = %17, %22, %27
  %32 = add nuw nsw i64 %18, 1
  %33 = icmp eq i64 %32, %11
  br i1 %33, label %12, label %17, !llvm.loop !10

34:                                               ; preds = %14, %42
  %35 = phi i32 [ %15, %14 ], [ %44, %42 ]
  %36 = phi i64 [ 2, %14 ], [ %43, %42 ]
  %37 = zext i32 %35 to i64
  br label %46

38:                                               ; preds = %42, %12
  %39 = sext i32 %8 to i64
  %40 = getelementptr inbounds i32, i32* %5, i64 %39
  %41 = load i32, i32* %40, align 4, !tbaa !8
  ret i32 %41

42:                                               ; preds = %72
  %43 = add nuw nsw i64 %36, 1
  %44 = add i32 %35, -1
  %45 = icmp eq i64 %43, %16
  br i1 %45, label %38, label %34, !llvm.loop !13

46:                                               ; preds = %34, %72
  %47 = phi i64 [ %36, %34 ], [ %74, %72 ]
  %48 = phi i64 [ 0, %34 ], [ %73, %72 ]
  %49 = getelementptr inbounds i8, i8* %0, i64 %48
  %50 = load i8, i8* %49, align 1, !tbaa !5
  %51 = icmp eq i8 %50, 40
  br i1 %51, label %52, label %67

52:                                               ; preds = %46
  %53 = getelementptr inbounds i8, i8* %0, i64 %47
  %54 = load i8, i8* %53, align 1, !tbaa !5
  %55 = icmp eq i8 %54, 41
  br i1 %55, label %56, label %67

56:                                               ; preds = %52
  %57 = add nuw nsw i64 %48, 1
  %58 = mul nuw nsw i64 %57, %3
  %59 = getelementptr inbounds i32, i32* %5, i64 %58
  %60 = add nsw i64 %47, -1
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4, !tbaa !8
  %63 = add nsw i32 %62, 2
  %64 = mul nuw nsw i64 %48, %3
  %65 = getelementptr inbounds i32, i32* %5, i64 %64
  %66 = getelementptr inbounds i32, i32* %65, i64 %47
  store i32 %63, i32* %66, align 4, !tbaa !8
  br label %67

67:                                               ; preds = %46, %52, %56
  %68 = mul nuw nsw i64 %48, %3
  %69 = getelementptr inbounds i32, i32* %5, i64 %68
  %70 = getelementptr inbounds i32, i32* %69, i64 %47
  %71 = getelementptr inbounds i32, i32* %5, i64 %47
  br label %76

72:                                               ; preds = %76
  %73 = add nuw nsw i64 %48, 1
  %74 = add nuw nsw i64 %47, 1
  %75 = icmp eq i64 %73, %37
  br i1 %75, label %42, label %46, !llvm.loop !14

76:                                               ; preds = %67, %76
  %77 = phi i64 [ %48, %67 ], [ %80, %76 ]
  %78 = getelementptr inbounds i32, i32* %69, i64 %77
  %79 = load i32, i32* %78, align 4, !tbaa !8
  %80 = add nuw nsw i64 %77, 1
  %81 = mul nuw nsw i64 %80, %3
  %82 = getelementptr inbounds i32, i32* %71, i64 %81
  %83 = load i32, i32* %82, align 4, !tbaa !8
  %84 = add nsw i32 %83, %79
  %85 = load i32, i32* %70, align 4, !tbaa !8
  %86 = icmp slt i32 %85, %84
  %87 = select i1 %86, i32 %84, i32 %85
  store i32 %87, i32* %70, align 4, !tbaa !8
  %88 = icmp eq i64 %80, %47
  br i1 %88, label %72, label %76, !llvm.loop !15
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_LENGTH_LONGEST_BALANCED_SUBSEQUENCE_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"int", !6, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
