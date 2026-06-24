; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1/MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = add i32 %2, 1
  %5 = zext i32 %4 to i64
  %6 = add nsw i32 %1, 1
  %7 = zext i32 %6 to i64
  %8 = mul nuw i64 %5, %7
  %9 = alloca i32, i64 %8, align 16
  %10 = bitcast i32* %9 to i8*
  %11 = icmp slt i32 %2, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %3
  %13 = add nsw i64 %5, -1
  %14 = and i64 %5, 3
  %15 = icmp ult i64 %13, 3
  br i1 %15, label %18, label %16

16:                                               ; preds = %12
  %17 = and i64 %5, 4294967292
  br label %33

18:                                               ; preds = %33, %12
  %19 = phi i64 [ 0, %12 ], [ %47, %33 ]
  %20 = icmp eq i64 %14, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %18, %21
  %22 = phi i64 [ %26, %21 ], [ %19, %18 ]
  %23 = phi i64 [ %27, %21 ], [ 0, %18 ]
  %24 = mul nuw nsw i64 %22, %7
  %25 = getelementptr inbounds i32, i32* %9, i64 %24
  store i32 0, i32* %25, align 4, !tbaa !5
  %26 = add nuw nsw i64 %22, 1
  %27 = add i64 %23, 1
  %28 = icmp eq i64 %27, %14
  br i1 %28, label %29, label %21, !llvm.loop !9

29:                                               ; preds = %18, %21, %3
  %30 = icmp slt i32 %1, 0
  br i1 %30, label %50, label %31

31:                                               ; preds = %29
  %32 = shl nuw nsw i64 %7, 2
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %10, i8 0, i64 %32, i1 false), !tbaa !5
  br label %50

33:                                               ; preds = %33, %16
  %34 = phi i64 [ 0, %16 ], [ %47, %33 ]
  %35 = phi i64 [ 0, %16 ], [ %48, %33 ]
  %36 = mul nuw nsw i64 %34, %7
  %37 = getelementptr inbounds i32, i32* %9, i64 %36
  store i32 0, i32* %37, align 16, !tbaa !5
  %38 = or i64 %34, 1
  %39 = mul nuw nsw i64 %38, %7
  %40 = getelementptr inbounds i32, i32* %9, i64 %39
  store i32 0, i32* %40, align 4, !tbaa !5
  %41 = or i64 %34, 2
  %42 = mul nuw nsw i64 %41, %7
  %43 = getelementptr inbounds i32, i32* %9, i64 %42
  store i32 0, i32* %43, align 8, !tbaa !5
  %44 = or i64 %34, 3
  %45 = mul nuw nsw i64 %44, %7
  %46 = getelementptr inbounds i32, i32* %9, i64 %45
  store i32 0, i32* %46, align 4, !tbaa !5
  %47 = add nuw nsw i64 %34, 4
  %48 = add i64 %35, 4
  %49 = icmp eq i64 %48, %17
  br i1 %49, label %18, label %33, !llvm.loop !11

50:                                               ; preds = %31, %29
  %51 = icmp slt i32 %2, 1
  br i1 %51, label %70, label %52

52:                                               ; preds = %50
  %53 = icmp sgt i32 %1, 1
  %54 = zext i32 %1 to i64
  %55 = add nsw i64 %54, -1
  %56 = and i64 %55, 1
  %57 = icmp eq i32 %1, 2
  %58 = and i64 %55, -2
  %59 = icmp eq i64 %56, 0
  br label %60

60:                                               ; preds = %52, %96
  %61 = phi i64 [ 1, %52 ], [ %97, %96 ]
  br i1 %53, label %62, label %96

62:                                               ; preds = %60
  %63 = add nsw i64 %61, -1
  %64 = mul nuw nsw i64 %63, %7
  %65 = getelementptr inbounds i32, i32* %9, i64 %64
  %66 = mul nuw nsw i64 %61, %7
  %67 = getelementptr inbounds i32, i32* %9, i64 %66
  %68 = load i32, i32* %0, align 4, !tbaa !5
  %69 = load i32, i32* %67, align 4, !tbaa !5
  br i1 %57, label %78, label %99

70:                                               ; preds = %96, %50
  %71 = sext i32 %2 to i64
  %72 = mul nsw i64 %71, %7
  %73 = getelementptr inbounds i32, i32* %9, i64 %72
  %74 = add nsw i32 %1, -1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !5
  ret i32 %77

78:                                               ; preds = %99, %62
  %79 = phi i32 [ %69, %62 ], [ %127, %99 ]
  %80 = phi i32 [ %68, %62 ], [ %124, %99 ]
  %81 = phi i64 [ 1, %62 ], [ %129, %99 ]
  %82 = phi i32 [ -2147483648, %62 ], [ %122, %99 ]
  br i1 %59, label %96, label %83

83:                                               ; preds = %78
  %84 = add nsw i64 %81, -1
  %85 = getelementptr inbounds i32, i32* %65, i64 %84
  %86 = load i32, i32* %85, align 4, !tbaa !5
  %87 = sub nsw i32 %86, %80
  %88 = icmp slt i32 %82, %87
  %89 = select i1 %88, i32 %87, i32 %82
  %90 = getelementptr inbounds i32, i32* %0, i64 %81
  %91 = load i32, i32* %90, align 4, !tbaa !5
  %92 = add nsw i32 %89, %91
  %93 = icmp slt i32 %79, %92
  %94 = select i1 %93, i32 %92, i32 %79
  %95 = getelementptr inbounds i32, i32* %67, i64 %81
  store i32 %94, i32* %95, align 4, !tbaa !5
  br label %96

96:                                               ; preds = %83, %78, %60
  %97 = add nuw nsw i64 %61, 1
  %98 = icmp eq i64 %97, %5
  br i1 %98, label %70, label %60, !llvm.loop !13

99:                                               ; preds = %62, %99
  %100 = phi i32 [ %127, %99 ], [ %69, %62 ]
  %101 = phi i32 [ %124, %99 ], [ %68, %62 ]
  %102 = phi i64 [ %129, %99 ], [ 1, %62 ]
  %103 = phi i32 [ %122, %99 ], [ -2147483648, %62 ]
  %104 = phi i64 [ %130, %99 ], [ 0, %62 ]
  %105 = add nsw i64 %102, -1
  %106 = getelementptr inbounds i32, i32* %65, i64 %105
  %107 = load i32, i32* %106, align 4, !tbaa !5
  %108 = sub nsw i32 %107, %101
  %109 = icmp slt i32 %103, %108
  %110 = select i1 %109, i32 %108, i32 %103
  %111 = getelementptr inbounds i32, i32* %0, i64 %102
  %112 = load i32, i32* %111, align 4, !tbaa !5
  %113 = add nsw i32 %110, %112
  %114 = icmp slt i32 %100, %113
  %115 = select i1 %114, i32 %113, i32 %100
  %116 = getelementptr inbounds i32, i32* %67, i64 %102
  store i32 %115, i32* %116, align 4, !tbaa !5
  %117 = add nuw nsw i64 %102, 1
  %118 = getelementptr inbounds i32, i32* %65, i64 %102
  %119 = load i32, i32* %118, align 4, !tbaa !5
  %120 = sub nsw i32 %119, %112
  %121 = icmp slt i32 %110, %120
  %122 = select i1 %121, i32 %120, i32 %110
  %123 = getelementptr inbounds i32, i32* %0, i64 %117
  %124 = load i32, i32* %123, align 4, !tbaa !5
  %125 = add nsw i32 %122, %124
  %126 = icmp slt i32 %115, %125
  %127 = select i1 %126, i32 %125, i32 %115
  %128 = getelementptr inbounds i32, i32* %67, i64 %117
  store i32 %127, i32* %128, align 4, !tbaa !5
  %129 = add nuw nsw i64 %102, 2
  %130 = add i64 %104, 2
  %131 = icmp eq i64 %130, %58
  br i1 %131, label %78, label %99, !llvm.loop !14
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_PROFIT_BY_BUYING_AND_SELLING_A_SHARE_AT_MOST_K_TIMES_1_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.unroll.disable"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
