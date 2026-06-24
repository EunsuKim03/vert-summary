; ModuleID = 'benchmark/c_transcoder/WAYS_REMOVE_ONE_ELEMENT_BINARY_STRING_XOR_BECOMES_ZERO/WAYS_REMOVE_ONE_ELEMENT_BINARY_STRING_XOR_BECOMES_ZERO_processed.c'
source_filename = "benchmark/c_transcoder/WAYS_REMOVE_ONE_ELEMENT_BINARY_STRING_XOR_BECOMES_ZERO/WAYS_REMOVE_ONE_ELEMENT_BINARY_STRING_XOR_BECOMES_ZERO_processed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree nounwind readonly uwtable
define dso_local i32 @f_gold(i8* nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0)
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %47

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  %7 = icmp ult i64 %6, 8
  br i1 %7, label %43, label %8

8:                                                ; preds = %5
  %9 = and i64 %2, 7
  %10 = sub nsw i64 %6, %9
  br label %11

11:                                               ; preds = %11, %8
  %12 = phi i64 [ 0, %8 ], [ %35, %11 ]
  %13 = phi <4 x i32> [ zeroinitializer, %8 ], [ %33, %11 ]
  %14 = phi <4 x i32> [ zeroinitializer, %8 ], [ %34, %11 ]
  %15 = phi <4 x i32> [ zeroinitializer, %8 ], [ %27, %11 ]
  %16 = phi <4 x i32> [ zeroinitializer, %8 ], [ %28, %11 ]
  %17 = getelementptr inbounds i8, i8* %0, i64 %12
  %18 = bitcast i8* %17 to <4 x i8>*
  %19 = load <4 x i8>, <4 x i8>* %18, align 1, !tbaa !5
  %20 = getelementptr inbounds i8, i8* %17, i64 4
  %21 = bitcast i8* %20 to <4 x i8>*
  %22 = load <4 x i8>, <4 x i8>* %21, align 1, !tbaa !5
  %23 = icmp eq <4 x i8> %19, <i8 49, i8 49, i8 49, i8 49>
  %24 = icmp eq <4 x i8> %22, <i8 49, i8 49, i8 49, i8 49>
  %25 = zext <4 x i1> %23 to <4 x i32>
  %26 = zext <4 x i1> %24 to <4 x i32>
  %27 = add <4 x i32> %15, %25
  %28 = add <4 x i32> %16, %26
  %29 = xor <4 x i1> %23, <i1 true, i1 true, i1 true, i1 true>
  %30 = xor <4 x i1> %24, <i1 true, i1 true, i1 true, i1 true>
  %31 = zext <4 x i1> %29 to <4 x i32>
  %32 = zext <4 x i1> %30 to <4 x i32>
  %33 = add <4 x i32> %13, %31
  %34 = add <4 x i32> %14, %32
  %35 = add nuw i64 %12, 8
  %36 = icmp eq i64 %35, %10
  br i1 %36, label %37, label %11, !llvm.loop !8

37:                                               ; preds = %11
  %38 = add <4 x i32> %28, %27
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %38)
  %40 = add <4 x i32> %34, %33
  %41 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %42 = icmp eq i64 %9, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %5, %37
  %44 = phi i64 [ 0, %5 ], [ %10, %37 ]
  %45 = phi i32 [ 0, %5 ], [ %41, %37 ]
  %46 = phi i32 [ 0, %5 ], [ %39, %37 ]
  br label %53

47:                                               ; preds = %53, %37, %1
  %48 = phi i32 [ 0, %1 ], [ %39, %37 ], [ %61, %53 ]
  %49 = phi i32 [ 0, %1 ], [ %41, %37 ], [ %64, %53 ]
  %50 = and i32 %48, 1
  %51 = icmp eq i32 %50, 0
  %52 = select i1 %51, i32 %49, i32 %48
  ret i32 %52

53:                                               ; preds = %43, %53
  %54 = phi i64 [ %65, %53 ], [ %44, %43 ]
  %55 = phi i32 [ %64, %53 ], [ %45, %43 ]
  %56 = phi i32 [ %61, %53 ], [ %46, %43 ]
  %57 = getelementptr inbounds i8, i8* %0, i64 %54
  %58 = load i8, i8* %57, align 1, !tbaa !5
  %59 = icmp eq i8 %58, 49
  %60 = zext i1 %59 to i32
  %61 = add nuw nsw i32 %56, %60
  %62 = xor i1 %59, true
  %63 = zext i1 %62 to i32
  %64 = add nuw nsw i32 %55, %63
  %65 = add nuw nsw i64 %54, 1
  %66 = icmp eq i64 %65, %6
  br i1 %66, label %47, label %53, !llvm.loop !11
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #2

attributes #0 = { nofree nounwind readonly uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nosync nounwind readnone willreturn }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = distinct !{!11, !9, !12, !10}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
