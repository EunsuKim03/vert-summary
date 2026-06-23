; ModuleID = 'benchmark/cpp_transcoder/INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1/INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1/INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %55

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %45, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  br label %9

9:                                                ; preds = %9, %7
  %10 = phi i64 [ 0, %7 ], [ %35, %9 ]
  %11 = phi <4 x i32> [ zeroinitializer, %7 ], [ %23, %9 ]
  %12 = phi <4 x i32> [ zeroinitializer, %7 ], [ %24, %9 ]
  %13 = phi <4 x i32> [ zeroinitializer, %7 ], [ %33, %9 ]
  %14 = phi <4 x i32> [ zeroinitializer, %7 ], [ %34, %9 ]
  %15 = phi <4 x i32> [ zeroinitializer, %7 ], [ %27, %9 ]
  %16 = phi <4 x i32> [ zeroinitializer, %7 ], [ %28, %9 ]
  %17 = getelementptr inbounds i32, i32* %0, i64 %10
  %18 = bitcast i32* %17 to <4 x i32>*
  %19 = load <4 x i32>, <4 x i32>* %18, align 4, !tbaa !5
  %20 = getelementptr inbounds i32, i32* %17, i64 4
  %21 = bitcast i32* %20 to <4 x i32>*
  %22 = load <4 x i32>, <4 x i32>* %21, align 4, !tbaa !5
  %23 = add <4 x i32> %19, %11
  %24 = add <4 x i32> %22, %12
  %25 = lshr <4 x i32> %19, <i32 31, i32 31, i32 31, i32 31>
  %26 = lshr <4 x i32> %22, <i32 31, i32 31, i32 31, i32 31>
  %27 = add <4 x i32> %25, %15
  %28 = add <4 x i32> %26, %16
  %29 = xor <4 x i32> %19, <i32 -1, i32 -1, i32 -1, i32 -1>
  %30 = xor <4 x i32> %22, <i32 -1, i32 -1, i32 -1, i32 -1>
  %31 = lshr <4 x i32> %29, <i32 31, i32 31, i32 31, i32 31>
  %32 = lshr <4 x i32> %30, <i32 31, i32 31, i32 31, i32 31>
  %33 = add <4 x i32> %31, %13
  %34 = add <4 x i32> %32, %14
  %35 = add nuw i64 %10, 8
  %36 = icmp eq i64 %35, %8
  br i1 %36, label %37, label %9, !llvm.loop !9

37:                                               ; preds = %9
  %38 = add <4 x i32> %28, %27
  %39 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %38)
  %40 = add <4 x i32> %34, %33
  %41 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %40)
  %42 = add <4 x i32> %24, %23
  %43 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %42)
  %44 = icmp eq i64 %8, %5
  br i1 %44, label %50, label %45

45:                                               ; preds = %4, %37
  %46 = phi i64 [ 0, %4 ], [ %8, %37 ]
  %47 = phi i32 [ 0, %4 ], [ %43, %37 ]
  %48 = phi i32 [ 0, %4 ], [ %41, %37 ]
  %49 = phi i32 [ 0, %4 ], [ %39, %37 ]
  br label %60

50:                                               ; preds = %60, %37
  %51 = phi i32 [ %43, %37 ], [ %67, %60 ]
  %52 = phi i32 [ %39, %37 ], [ %69, %60 ]
  %53 = phi i32 [ %41, %37 ], [ %72, %60 ]
  %54 = sub nsw i32 %52, %53
  br label %55

55:                                               ; preds = %50, %2
  %56 = phi i32 [ 0, %2 ], [ %51, %50 ]
  %57 = phi i32 [ 0, %2 ], [ %54, %50 ]
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 true)
  %59 = sdiv i32 %56, %58
  ret i32 %59

60:                                               ; preds = %45, %60
  %61 = phi i64 [ %73, %60 ], [ %46, %45 ]
  %62 = phi i32 [ %67, %60 ], [ %47, %45 ]
  %63 = phi i32 [ %72, %60 ], [ %48, %45 ]
  %64 = phi i32 [ %69, %60 ], [ %49, %45 ]
  %65 = getelementptr inbounds i32, i32* %0, i64 %61
  %66 = load i32, i32* %65, align 4, !tbaa !5
  %67 = add nsw i32 %66, %62
  %68 = lshr i32 %66, 31
  %69 = add nuw nsw i32 %68, %64
  %70 = xor i32 %66, -1
  %71 = lshr i32 %70, 31
  %72 = add nuw nsw i32 %71, %63
  %73 = add nuw nsw i64 %61, 1
  %74 = icmp eq i64 %73, %5
  br i1 %74, label %50, label %60, !llvm.loop !12
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_INTEGER_POSITIVE_VALUE_POSITIVE_NEGATIVE_VALUE_ARRAY_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nosync nounwind readnone willreturn }
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
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !10, !13, !11}
!13 = !{!"llvm.loop.unroll.runtime.disable"}
