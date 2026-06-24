; ModuleID = 'benchmark/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_TWICE/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_TWICE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_TWICE/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_TWICE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_TWICE_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 4)
  %5 = extractvalue { i64, i1 } %4, 1
  %6 = extractvalue { i64, i1 } %4, 0
  %7 = select i1 %5, i64 -1, i64 %6
  %8 = tail call noalias noundef nonnull i8* @_Znam(i64 noundef %7) #9
  %9 = bitcast i8* %8 to i32*
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = add nsw i32 %1, -1
  %13 = sext i32 %12 to i64
  br label %97

14:                                               ; preds = %2
  %15 = zext i32 %1 to i64
  %16 = shl nuw nsw i64 %15, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 %8, i8 0, i64 %16, i1 false), !tbaa !5
  %17 = add nsw i32 %1, -1
  %18 = zext i32 %17 to i64
  %19 = icmp eq i32 %1, 1
  br i1 %19, label %97, label %20

20:                                               ; preds = %14
  %21 = add nsw i32 %1, -2
  %22 = getelementptr inbounds i32, i32* %0, i64 %18
  %23 = load i32, i32* %22, align 4, !tbaa !5
  %24 = zext i32 %21 to i64
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %20
  %28 = getelementptr inbounds i32, i32* %0, i64 %24
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = icmp sgt i32 %29, %23
  %31 = select i1 %30, i32 %29, i32 %23
  %32 = add nuw nsw i64 %24, 1
  %33 = getelementptr inbounds i32, i32* %9, i64 %32
  %34 = sub nsw i32 %31, %29
  %35 = load i32, i32* %33, align 4, !tbaa !5
  %36 = icmp slt i32 %35, %34
  %37 = select i1 %36, i32 %34, i32 %35
  %38 = getelementptr inbounds i32, i32* %9, i64 %24
  store i32 %37, i32* %38, align 4, !tbaa !5
  %39 = add nsw i64 %24, -1
  br label %40

40:                                               ; preds = %27, %20
  %41 = phi i64 [ %24, %20 ], [ %39, %27 ]
  %42 = phi i32 [ %23, %20 ], [ %31, %27 ]
  %43 = icmp eq i32 %21, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %54, %40
  br i1 %19, label %97, label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %0, align 4, !tbaa !5
  %47 = zext i32 %1 to i64
  %48 = load i32, i32* %9, align 4, !tbaa !5
  %49 = add nsw i64 %47, -1
  %50 = and i64 %49, 1
  %51 = icmp eq i32 %1, 2
  br i1 %51, label %81, label %52

52:                                               ; preds = %45
  %53 = and i64 %49, -2
  br label %101

54:                                               ; preds = %40, %54
  %55 = phi i64 [ %79, %54 ], [ %41, %40 ]
  %56 = phi i32 [ %72, %54 ], [ %42, %40 ]
  %57 = getelementptr inbounds i32, i32* %0, i64 %55
  %58 = load i32, i32* %57, align 4, !tbaa !5
  %59 = icmp sgt i32 %58, %56
  %60 = select i1 %59, i32 %58, i32 %56
  %61 = add nuw nsw i64 %55, 1
  %62 = getelementptr inbounds i32, i32* %9, i64 %61
  %63 = sub nsw i32 %60, %58
  %64 = load i32, i32* %62, align 4, !tbaa !5
  %65 = icmp slt i32 %64, %63
  %66 = select i1 %65, i32 %63, i32 %64
  %67 = getelementptr inbounds i32, i32* %9, i64 %55
  store i32 %66, i32* %67, align 4, !tbaa !5
  %68 = add nsw i64 %55, -1
  %69 = getelementptr inbounds i32, i32* %0, i64 %68
  %70 = load i32, i32* %69, align 4, !tbaa !5
  %71 = icmp sgt i32 %70, %60
  %72 = select i1 %71, i32 %70, i32 %60
  %73 = getelementptr inbounds i32, i32* %9, i64 %55
  %74 = sub nsw i32 %72, %70
  %75 = load i32, i32* %73, align 4, !tbaa !5
  %76 = icmp slt i32 %75, %74
  %77 = select i1 %76, i32 %74, i32 %75
  %78 = getelementptr inbounds i32, i32* %9, i64 %68
  store i32 %77, i32* %78, align 4, !tbaa !5
  %79 = add nsw i64 %55, -2
  %80 = icmp eq i64 %68, 0
  br i1 %80, label %44, label %54, !llvm.loop !9

81:                                               ; preds = %101, %45
  %82 = phi i32 [ %48, %45 ], [ %126, %101 ]
  %83 = phi i64 [ 1, %45 ], [ %127, %101 ]
  %84 = phi i32 [ %46, %45 ], [ %120, %101 ]
  %85 = icmp eq i64 %50, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = getelementptr inbounds i32, i32* %0, i64 %83
  %88 = load i32, i32* %87, align 4, !tbaa !5
  %89 = icmp slt i32 %88, %84
  %90 = getelementptr inbounds i32, i32* %9, i64 %83
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = sub i32 %88, %84
  %93 = select i1 %89, i32 0, i32 %92
  %94 = add nsw i32 %93, %91
  %95 = icmp slt i32 %82, %94
  %96 = select i1 %95, i32 %94, i32 %82
  store i32 %96, i32* %90, align 4, !tbaa !5
  br label %97

97:                                               ; preds = %86, %81, %14, %11, %44
  %98 = phi i64 [ %18, %44 ], [ %13, %11 ], [ %18, %14 ], [ %18, %81 ], [ %18, %86 ]
  %99 = getelementptr inbounds i32, i32* %9, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !5
  tail call void @_ZdaPv(i8* noundef nonnull %8) #10
  ret i32 %100

101:                                              ; preds = %101, %52
  %102 = phi i32 [ %48, %52 ], [ %126, %101 ]
  %103 = phi i64 [ 1, %52 ], [ %127, %101 ]
  %104 = phi i32 [ %46, %52 ], [ %120, %101 ]
  %105 = phi i64 [ 0, %52 ], [ %128, %101 ]
  %106 = getelementptr inbounds i32, i32* %0, i64 %103
  %107 = load i32, i32* %106, align 4, !tbaa !5
  %108 = icmp slt i32 %107, %104
  %109 = select i1 %108, i32 %107, i32 %104
  %110 = getelementptr inbounds i32, i32* %9, i64 %103
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %112 = sub nsw i32 %107, %109
  %113 = add nsw i32 %112, %111
  %114 = icmp slt i32 %102, %113
  %115 = select i1 %114, i32 %113, i32 %102
  store i32 %115, i32* %110, align 4, !tbaa !5
  %116 = add nuw nsw i64 %103, 1
  %117 = getelementptr inbounds i32, i32* %0, i64 %116
  %118 = load i32, i32* %117, align 4, !tbaa !5
  %119 = icmp slt i32 %118, %109
  %120 = select i1 %119, i32 %118, i32 %109
  %121 = getelementptr inbounds i32, i32* %9, i64 %116
  %122 = load i32, i32* %121, align 4, !tbaa !5
  %123 = sub nsw i32 %118, %120
  %124 = add nsw i32 %123, %122
  %125 = icmp slt i32 %115, %124
  %126 = select i1 %125, i32 %124, i32 %115
  store i32 %126, i32* %121, align 4, !tbaa !5
  %127 = add nuw nsw i64 %103, 2
  %128 = add i64 %105, 2
  %129 = icmp eq i64 %128, %53
  br i1 %129, label %81, label %101, !llvm.loop !11
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(i8* noundef) local_unnamed_addr #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_TWICE_processed.cpp() #7 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #11
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { builtin allocsize(0) }
attributes #10 = { builtin nounwind }
attributes #11 = { nounwind }

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
