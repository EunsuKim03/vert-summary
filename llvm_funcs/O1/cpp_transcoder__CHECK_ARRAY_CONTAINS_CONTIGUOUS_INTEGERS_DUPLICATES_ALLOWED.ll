; ModuleID = 'llvm/cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED/CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = getelementptr inbounds i32, i32* %0, i64 1
  %6 = icmp ult i32 %1, 2
  br i1 %6, label %16, label %7

7:                                                ; preds = %2, %7
  %8 = phi i32* [ %14, %7 ], [ %5, %2 ]
  %9 = phi i32* [ %13, %7 ], [ %0, %2 ]
  %10 = load i32, i32* %9, align 4, !tbaa !5
  %11 = load i32, i32* %8, align 4, !tbaa !5
  %12 = icmp slt i32 %10, %11
  %13 = select i1 %12, i32* %8, i32* %9
  %14 = getelementptr inbounds i32, i32* %8, i64 1
  %15 = icmp eq i32* %14, %4
  br i1 %15, label %16, label %7, !llvm.loop !9

16:                                               ; preds = %7, %2
  %17 = phi i32* [ %0, %2 ], [ %13, %7 ]
  %18 = load i32, i32* %17, align 4, !tbaa !5
  br i1 %6, label %28, label %19

19:                                               ; preds = %16, %19
  %20 = phi i32* [ %26, %19 ], [ %5, %16 ]
  %21 = phi i32* [ %25, %19 ], [ %0, %16 ]
  %22 = load i32, i32* %20, align 4, !tbaa !5
  %23 = load i32, i32* %21, align 4, !tbaa !5
  %24 = icmp slt i32 %22, %23
  %25 = select i1 %24, i32* %20, i32* %21
  %26 = getelementptr inbounds i32, i32* %20, i64 1
  %27 = icmp eq i32* %26, %4
  br i1 %27, label %28, label %19, !llvm.loop !12

28:                                               ; preds = %19, %16
  %29 = phi i32* [ %0, %16 ], [ %25, %19 ]
  %30 = load i32, i32* %29, align 4, !tbaa !5
  %31 = sub nsw i32 %18, %30
  %32 = icmp slt i32 %31, %1
  br i1 %32, label %33, label %72

33:                                               ; preds = %28
  %34 = add nsw i32 %31, 1
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  %37 = alloca i8, i64 %35, align 16
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %37, i8 0, i64 %35, i1 false)
  %38 = icmp sgt i32 %1, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = zext i32 %1 to i64
  br label %50

41:                                               ; preds = %50, %33
  %42 = icmp slt i32 %31, 0
  br i1 %42, label %69, label %43

43:                                               ; preds = %41
  %44 = sext i32 %31 to i64
  %45 = add i32 %18, 1
  %46 = sub i32 %45, %30
  %47 = zext i32 %46 to i64
  %48 = load i8, i8* %37, align 16, !tbaa !13, !range !15
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %69, label %59

50:                                               ; preds = %39, %50
  %51 = phi i64 [ 0, %39 ], [ %57, %50 ]
  %52 = getelementptr inbounds i32, i32* %0, i64 %51
  %53 = load i32, i32* %52, align 4, !tbaa !5
  %54 = sub nsw i32 %53, %30
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %37, i64 %55
  store i8 1, i8* %56, align 1, !tbaa !13
  %57 = add nuw nsw i64 %51, 1
  %58 = icmp eq i64 %57, %40
  br i1 %58, label %41, label %50, !llvm.loop !16

59:                                               ; preds = %43, %63
  %60 = phi i64 [ %61, %63 ], [ 0, %43 ]
  %61 = add nuw nsw i64 %60, 1
  %62 = icmp eq i64 %61, %47
  br i1 %62, label %67, label %63, !llvm.loop !17

63:                                               ; preds = %59
  %64 = getelementptr inbounds i8, i8* %37, i64 %61
  %65 = load i8, i8* %64, align 1, !tbaa !13, !range !15
  %66 = icmp eq i8 %65, 0
  br i1 %66, label %67, label %59, !llvm.loop !17

67:                                               ; preds = %59, %63
  %68 = icmp sge i64 %60, %44
  br label %69

69:                                               ; preds = %67, %43, %41
  %70 = phi i1 [ %42, %41 ], [ %42, %43 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  call void @llvm.stackrestore(i8* %36)
  br label %72

72:                                               ; preds = %28, %69
  %73 = phi i32 [ %71, %69 ], [ 0, %28 ]
  ret i32 %73
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_reprocessed.cpp() #6 section ".text.startup" {
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
!13 = !{!14, !14, i64 0}
!14 = !{!"bool", !7, i64 0}
!15 = !{i8 0, i8 2}
!16 = distinct !{!16, !10, !11}
!17 = distinct !{!17, !10, !11}
