; ModuleID = 'llvm/cpp_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/DICE_THROW_PROBLEM/DICE_THROW_PROBLEM_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DICE_THROW_PROBLEM_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldiii(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add nsw i32 %1, 1
  %5 = zext i32 %4 to i64
  %6 = add i32 %2, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %7, %5
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = shl nuw i64 %8, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %11, i1 false)
  %12 = icmp sgt i32 %0, 0
  %13 = icmp sgt i32 %2, 0
  %14 = and i1 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %3
  %16 = getelementptr inbounds i32, i32* %9, i64 %7
  %17 = add i32 %2, -1
  %18 = add i32 %0, -1
  %19 = call i32 @llvm.umin.i32(i32 %17, i32 %18)
  %20 = add i32 %19, 2
  %21 = zext i32 %20 to i64
  br label %31

22:                                               ; preds = %31, %3
  %23 = icmp slt i32 %1, 2
  br i1 %23, label %44, label %24

24:                                               ; preds = %22
  %25 = icmp slt i32 %2, 1
  %26 = icmp sgt i32 %0, 0
  %27 = sext i32 %0 to i64
  %28 = add i32 %1, 1
  %29 = zext i32 %28 to i64
  %30 = zext i32 %6 to i64
  br label %36

31:                                               ; preds = %15, %31
  %32 = phi i64 [ 1, %15 ], [ %34, %31 ]
  %33 = getelementptr inbounds i32, i32* %16, i64 %32
  store i32 1, i32* %33, align 4, !tbaa !5
  %34 = add nuw nsw i64 %32, 1
  %35 = icmp eq i64 %34, %21
  br i1 %35, label %22, label %31, !llvm.loop !9

36:                                               ; preds = %24, %57
  %37 = phi i64 [ 2, %24 ], [ %58, %57 ]
  br i1 %25, label %57, label %38

38:                                               ; preds = %36
  %39 = add nsw i64 %37, -1
  %40 = mul nuw nsw i64 %39, %7
  %41 = getelementptr inbounds i32, i32* %9, i64 %40
  %42 = mul nuw nsw i64 %37, %7
  %43 = getelementptr inbounds i32, i32* %9, i64 %42
  br label %51

44:                                               ; preds = %57, %22
  %45 = sext i32 %1 to i64
  %46 = mul nsw i64 %7, %45
  %47 = getelementptr inbounds i32, i32* %9, i64 %46
  %48 = sext i32 %2 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4, !tbaa !5
  ret i32 %50

51:                                               ; preds = %38, %60
  %52 = phi i64 [ 1, %38 ], [ %61, %60 ]
  %53 = icmp ugt i64 %52, 1
  %54 = select i1 %26, i1 %53, i1 false
  br i1 %54, label %55, label %60

55:                                               ; preds = %51
  %56 = getelementptr inbounds i32, i32* %43, i64 %52
  br label %63

57:                                               ; preds = %60, %36
  %58 = add nuw nsw i64 %37, 1
  %59 = icmp eq i64 %58, %29
  br i1 %59, label %44, label %36, !llvm.loop !12

60:                                               ; preds = %63, %51
  %61 = add nuw nsw i64 %52, 1
  %62 = icmp eq i64 %61, %30
  br i1 %62, label %57, label %51, !llvm.loop !13

63:                                               ; preds = %55, %63
  %64 = phi i64 [ 1, %55 ], [ %70, %63 ]
  %65 = sub nsw i64 %52, %64
  %66 = getelementptr inbounds i32, i32* %41, i64 %65
  %67 = load i32, i32* %66, align 4, !tbaa !5
  %68 = load i32, i32* %56, align 4, !tbaa !5
  %69 = add nsw i32 %68, %67
  store i32 %69, i32* %56, align 4, !tbaa !5
  %70 = add nuw nsw i64 %64, 1
  %71 = icmp slt i64 %64, %27
  %72 = icmp ugt i64 %52, %70
  %73 = select i1 %71, i1 %72, i1 false
  br i1 %73, label %63, label %60, !llvm.loop !14
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DICE_THROW_PROBLEM_reprocessed.cpp() #5 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
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
!14 = distinct !{!14, !10, !11}
