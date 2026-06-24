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
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = load i32, i32* %0, align 4, !tbaa !5
  br label %29

9:                                                ; preds = %2, %9
  %10 = phi i32* [ %16, %9 ], [ %5, %2 ]
  %11 = phi i32* [ %15, %9 ], [ %0, %2 ]
  %12 = load i32, i32* %11, align 4, !tbaa !5
  %13 = load i32, i32* %10, align 4, !tbaa !5
  %14 = icmp slt i32 %12, %13
  %15 = select i1 %14, i32* %10, i32* %11
  %16 = getelementptr inbounds i32, i32* %10, i64 1
  %17 = icmp eq i32* %16, %4
  br i1 %17, label %18, label %9, !llvm.loop !9

18:                                               ; preds = %9
  %19 = load i32, i32* %15, align 4, !tbaa !5
  br label %20

20:                                               ; preds = %18, %20
  %21 = phi i32* [ %27, %20 ], [ %5, %18 ]
  %22 = phi i32* [ %26, %20 ], [ %0, %18 ]
  %23 = load i32, i32* %21, align 4, !tbaa !5
  %24 = load i32, i32* %22, align 4, !tbaa !5
  %25 = icmp slt i32 %23, %24
  %26 = select i1 %25, i32* %21, i32* %22
  %27 = getelementptr inbounds i32, i32* %21, i64 1
  %28 = icmp eq i32* %27, %4
  br i1 %28, label %29, label %20, !llvm.loop !11

29:                                               ; preds = %20, %7
  %30 = phi i32 [ %8, %7 ], [ %19, %20 ]
  %31 = phi i32* [ %0, %7 ], [ %26, %20 ]
  %32 = load i32, i32* %31, align 4, !tbaa !5
  %33 = sub nsw i32 %30, %32
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %35, label %113

35:                                               ; preds = %29
  %36 = add nsw i32 %33, 1
  %37 = zext i32 %36 to i64
  %38 = tail call i8* @llvm.stacksave()
  %39 = alloca i8, i64 %37, align 16
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %39, i8 0, i64 %37, i1 false)
  %40 = icmp sgt i32 %1, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = zext i32 %1 to i64
  %43 = add nsw i64 %42, -1
  %44 = and i64 %42, 3
  %45 = icmp ult i64 %43, 3
  br i1 %45, label %48, label %46

46:                                               ; preds = %41
  %47 = and i64 %42, 4294967292
  br label %71

48:                                               ; preds = %71, %41
  %49 = phi i64 [ 0, %41 ], [ %97, %71 ]
  %50 = icmp eq i64 %44, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %48, %51
  %52 = phi i64 [ %59, %51 ], [ %49, %48 ]
  %53 = phi i64 [ %60, %51 ], [ 0, %48 ]
  %54 = getelementptr inbounds i32, i32* %0, i64 %52
  %55 = load i32, i32* %54, align 4, !tbaa !5
  %56 = sub nsw i32 %55, %32
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %39, i64 %57
  store i8 1, i8* %58, align 1, !tbaa !12
  %59 = add nuw nsw i64 %52, 1
  %60 = add i64 %53, 1
  %61 = icmp eq i64 %60, %44
  br i1 %61, label %62, label %51, !llvm.loop !14

62:                                               ; preds = %48, %51, %35
  %63 = icmp slt i32 %33, 0
  br i1 %63, label %111, label %64

64:                                               ; preds = %62
  %65 = zext i32 %33 to i64
  %66 = add i32 %30, 1
  %67 = sub i32 %66, %32
  %68 = zext i32 %67 to i64
  %69 = load i8, i8* %39, align 16, !tbaa !12, !range !16
  %70 = icmp eq i8 %69, 0
  br i1 %70, label %111, label %100

71:                                               ; preds = %71, %46
  %72 = phi i64 [ 0, %46 ], [ %97, %71 ]
  %73 = phi i64 [ 0, %46 ], [ %98, %71 ]
  %74 = getelementptr inbounds i32, i32* %0, i64 %72
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = sub nsw i32 %75, %32
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %39, i64 %77
  store i8 1, i8* %78, align 1, !tbaa !12
  %79 = or i64 %72, 1
  %80 = getelementptr inbounds i32, i32* %0, i64 %79
  %81 = load i32, i32* %80, align 4, !tbaa !5
  %82 = sub nsw i32 %81, %32
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %39, i64 %83
  store i8 1, i8* %84, align 1, !tbaa !12
  %85 = or i64 %72, 2
  %86 = getelementptr inbounds i32, i32* %0, i64 %85
  %87 = load i32, i32* %86, align 4, !tbaa !5
  %88 = sub nsw i32 %87, %32
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i8, i8* %39, i64 %89
  store i8 1, i8* %90, align 1, !tbaa !12
  %91 = or i64 %72, 3
  %92 = getelementptr inbounds i32, i32* %0, i64 %91
  %93 = load i32, i32* %92, align 4, !tbaa !5
  %94 = sub nsw i32 %93, %32
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %39, i64 %95
  store i8 1, i8* %96, align 1, !tbaa !12
  %97 = add nuw nsw i64 %72, 4
  %98 = add i64 %73, 4
  %99 = icmp eq i64 %98, %47
  br i1 %99, label %48, label %71, !llvm.loop !17

100:                                              ; preds = %64, %104
  %101 = phi i64 [ %102, %104 ], [ 0, %64 ]
  %102 = add nuw nsw i64 %101, 1
  %103 = icmp eq i64 %102, %68
  br i1 %103, label %108, label %104, !llvm.loop !18

104:                                              ; preds = %100
  %105 = getelementptr inbounds i8, i8* %39, i64 %102
  %106 = load i8, i8* %105, align 1, !tbaa !12, !range !16
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %100, !llvm.loop !18

108:                                              ; preds = %100, %104
  %109 = icmp uge i64 %101, %65
  %110 = zext i1 %109 to i32
  br label %111

111:                                              ; preds = %108, %64, %62
  %112 = phi i32 [ 1, %62 ], [ 0, %64 ], [ %110, %108 ]
  tail call void @llvm.stackrestore(i8* %38)
  br label %113

113:                                              ; preds = %29, %111
  %114 = phi i32 [ %112, %111 ], [ 0, %29 ]
  ret i32 %114
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CHECK_ARRAY_CONTAINS_CONTIGUOUS_INTEGERS_DUPLICATES_ALLOWED_reprocessed.cpp() #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
!12 = !{!13, !13, i64 0}
!13 = !{!"bool", !7, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.unroll.disable"}
!16 = !{i8 0, i8 2}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
