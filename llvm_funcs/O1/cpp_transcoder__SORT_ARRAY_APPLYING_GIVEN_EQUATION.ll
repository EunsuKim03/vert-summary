; ModuleID = 'llvm/cpp_transcoder/SORT_ARRAY_APPLYING_GIVEN_EQUATION/SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SORT_ARRAY_APPLYING_GIVEN_EQUATION/SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind uwtable
define dso_local void @_Z6f_goldPiiiii(i32* nocapture noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
  %6 = bitcast i32* %0 to i8*
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %5
  %9 = zext i32 %1 to i64
  br label %14

10:                                               ; preds = %14, %5
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %24

12:                                               ; preds = %10
  %13 = zext i32 %1 to i64
  br label %34

14:                                               ; preds = %8, %14
  %15 = phi i64 [ 0, %8 ], [ %22, %14 ]
  %16 = getelementptr inbounds i32, i32* %0, i64 %15
  %17 = load i32, i32* %16, align 4, !tbaa !5
  %18 = mul nsw i32 %17, %2
  %19 = add i32 %18, %3
  %20 = mul i32 %19, %17
  %21 = add nsw i32 %20, %4
  store i32 %21, i32* %16, align 4, !tbaa !5
  %22 = add nuw nsw i64 %15, 1
  %23 = icmp eq i64 %22, %9
  br i1 %23, label %10, label %14, !llvm.loop !9

24:                                               ; preds = %34, %10
  %25 = phi i32 [ -2147483648, %10 ], [ %41, %34 ]
  %26 = phi i32 [ undef, %10 ], [ %43, %34 ]
  %27 = add nsw i32 %1, -1
  %28 = zext i32 %1 to i64
  %29 = alloca i32, i64 %28, align 16
  %30 = bitcast i32* %29 to i8*
  %31 = icmp sgt i32 %26, 0
  %32 = icmp sgt i32 %27, %26
  %33 = select i1 %31, i1 %32, i1 false
  br i1 %33, label %68, label %48

34:                                               ; preds = %12, %34
  %35 = phi i64 [ 0, %12 ], [ %44, %34 ]
  %36 = phi i32 [ undef, %12 ], [ %43, %34 ]
  %37 = phi i32 [ -2147483648, %12 ], [ %41, %34 ]
  %38 = getelementptr inbounds i32, i32* %0, i64 %35
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = icmp slt i32 %37, %39
  %41 = select i1 %40, i32 %39, i32 %37
  %42 = trunc i64 %35 to i32
  %43 = select i1 %40, i32 %42, i32 %36
  %44 = add nuw nsw i64 %35, 1
  %45 = icmp eq i64 %44, %13
  br i1 %45, label %24, label %34, !llvm.loop !12

46:                                               ; preds = %68
  %47 = trunc i64 %86 to i32
  br label %48

48:                                               ; preds = %46, %24
  %49 = phi i32 [ 0, %24 ], [ %81, %46 ]
  %50 = phi i32 [ %27, %24 ], [ %84, %46 ]
  %51 = phi i32 [ 0, %24 ], [ %47, %46 ]
  %52 = icmp slt i32 %49, %26
  br i1 %52, label %53, label %92

53:                                               ; preds = %48
  %54 = zext i32 %51 to i64
  %55 = getelementptr i32, i32* %29, i64 %54
  %56 = bitcast i32* %55 to i8*
  %57 = sext i32 %49 to i64
  %58 = getelementptr i32, i32* %0, i64 %57
  %59 = bitcast i32* %58 to i8*
  %60 = xor i32 %49, -1
  %61 = add i32 %26, %60
  %62 = zext i32 %61 to i64
  %63 = shl nuw nsw i64 %62, 2
  %64 = add nuw nsw i64 %63, 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* noundef nonnull align 4 dereferenceable(1) %56, i8* noundef nonnull align 4 dereferenceable(1) %59, i64 %64, i1 false), !tbaa !5
  %65 = zext i32 %51 to i64
  %66 = sext i32 %49 to i64
  %67 = sext i32 %26 to i64
  br label %99

68:                                               ; preds = %24, %68
  %69 = phi i64 [ %86, %68 ], [ 0, %24 ]
  %70 = phi i32 [ %84, %68 ], [ %27, %24 ]
  %71 = phi i32 [ %81, %68 ], [ 0, %24 ]
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %0, i64 %72
  %74 = load i32, i32* %73, align 4, !tbaa !5
  %75 = sext i32 %70 to i64
  %76 = getelementptr inbounds i32, i32* %0, i64 %75
  %77 = load i32, i32* %76, align 4, !tbaa !5
  %78 = icmp slt i32 %74, %77
  %79 = select i1 %78, i32 %74, i32 %77
  %80 = zext i1 %78 to i32
  %81 = add nuw nsw i32 %71, %80
  %82 = xor i1 %78, true
  %83 = sext i1 %82 to i32
  %84 = add nsw i32 %70, %83
  %85 = getelementptr inbounds i32, i32* %29, i64 %69
  store i32 %79, i32* %85, align 4, !tbaa !5
  %86 = add nuw i64 %69, 1
  %87 = icmp slt i32 %81, %26
  %88 = icmp sgt i32 %84, %26
  %89 = select i1 %87, i1 %88, i1 false
  br i1 %89, label %68, label %46, !llvm.loop !13

90:                                               ; preds = %99
  %91 = trunc i64 %103 to i32
  br label %92

92:                                               ; preds = %90, %48
  %93 = phi i32 [ %51, %48 ], [ %91, %90 ]
  %94 = icmp sgt i32 %50, %26
  br i1 %94, label %95, label %114

95:                                               ; preds = %92
  %96 = zext i32 %93 to i64
  %97 = sext i32 %50 to i64
  %98 = sext i32 %26 to i64
  br label %105

99:                                               ; preds = %53, %99
  %100 = phi i64 [ %66, %53 ], [ %102, %99 ]
  %101 = phi i64 [ %65, %53 ], [ %103, %99 ]
  %102 = add nsw i64 %100, 1
  %103 = add nuw nsw i64 %101, 1
  %104 = icmp eq i64 %102, %67
  br i1 %104, label %90, label %99, !llvm.loop !14

105:                                              ; preds = %95, %105
  %106 = phi i64 [ %97, %95 ], [ %108, %105 ]
  %107 = phi i64 [ %96, %95 ], [ %111, %105 ]
  %108 = add nsw i64 %106, -1
  %109 = getelementptr inbounds i32, i32* %0, i64 %106
  %110 = load i32, i32* %109, align 4, !tbaa !5
  %111 = add nuw nsw i64 %107, 1
  %112 = getelementptr inbounds i32, i32* %29, i64 %107
  store i32 %110, i32* %112, align 4, !tbaa !5
  %113 = icmp sgt i64 %108, %98
  br i1 %113, label %105, label %114, !llvm.loop !15

114:                                              ; preds = %105, %92
  %115 = sext i32 %27 to i64
  %116 = getelementptr inbounds i32, i32* %29, i64 %115
  store i32 %25, i32* %116, align 4, !tbaa !5
  %117 = icmp sgt i32 %1, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %114
  %119 = zext i32 %1 to i64
  %120 = shl nuw nsw i64 %119, 2
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* nonnull align 16 %30, i64 %120, i1 false), !tbaa !5
  br label %121

121:                                              ; preds = %118, %114
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SORT_ARRAY_APPLYING_GIVEN_EQUATION_reprocessed.cpp() #4 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !10, !11}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !11}
!15 = distinct !{!15, !10, !11}
