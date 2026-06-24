; ModuleID = 'llvm/cpp_transcoder/NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS/NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS/NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldPc(i8* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = tail call i64 @strlen(i8* noundef nonnull dereferenceable(1) %0) #7
  %3 = trunc i64 %2 to i32
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %126

5:                                                ; preds = %1
  %6 = and i64 %2, 4294967295
  %7 = add nsw i64 %6, -1
  %8 = and i64 %2, 3
  %9 = icmp ult i64 %7, 3
  br i1 %9, label %12, label %10

10:                                               ; preds = %5
  %11 = sub nsw i64 %6, %8
  br label %92

12:                                               ; preds = %121, %5
  %13 = phi i32 [ undef, %5 ], [ %122, %121 ]
  %14 = phi i64 [ 0, %5 ], [ %123, %121 ]
  %15 = phi i32 [ 0, %5 ], [ %122, %121 ]
  %16 = icmp eq i64 %8, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %12, %25
  %18 = phi i64 [ %27, %25 ], [ %14, %12 ]
  %19 = phi i32 [ %26, %25 ], [ %15, %12 ]
  %20 = phi i64 [ %28, %25 ], [ 0, %12 ]
  %21 = getelementptr inbounds i8, i8* %0, i64 %18
  %22 = load i8, i8* %21, align 1, !tbaa !5
  switch i8 %22, label %25 [
    i8 52, label %23
    i8 56, label %23
    i8 48, label %23
  ]

23:                                               ; preds = %17, %17, %17
  %24 = add nsw i32 %19, 1
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi i32 [ %24, %23 ], [ %19, %17 ]
  %27 = add nuw nsw i64 %18, 1
  %28 = add i64 %20, 1
  %29 = icmp eq i64 %28, %8
  br i1 %29, label %30, label %17, !llvm.loop !8

30:                                               ; preds = %25, %12
  %31 = phi i32 [ %13, %12 ], [ %26, %25 ]
  %32 = icmp sgt i32 %3, 1
  br i1 %32, label %33, label %126

33:                                               ; preds = %30
  %34 = add i64 %2, 4294967295
  %35 = and i64 %34, 4294967295
  %36 = load i8, i8* %0, align 1, !tbaa !5
  %37 = icmp ult i64 %35, 8
  br i1 %37, label %88, label %38

38:                                               ; preds = %33
  %39 = and i64 %34, 7
  %40 = sub nsw i64 %35, %39
  %41 = insertelement <4 x i8> poison, i8 %36, i64 3
  %42 = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %31, i64 0
  br label %43

43:                                               ; preds = %43, %38
  %44 = phi i64 [ 0, %38 ], [ %81, %43 ]
  %45 = phi <4 x i8> [ %41, %38 ], [ %60, %43 ]
  %46 = phi <4 x i32> [ %42, %38 ], [ %79, %43 ]
  %47 = phi <4 x i32> [ zeroinitializer, %38 ], [ %80, %43 ]
  %48 = insertelement <4 x i64> poison, i64 %44, i64 0
  %49 = shufflevector <4 x i64> %48, <4 x i64> poison, <4 x i32> zeroinitializer
  %50 = or <4 x i64> %49, <i64 1, i64 2, i64 3, i64 4>
  %51 = or <4 x i64> %49, <i64 5, i64 6, i64 7, i64 poison>
  %52 = add <4 x i64> %49, <i64 poison, i64 poison, i64 poison, i64 8>
  %53 = shufflevector <4 x i64> %51, <4 x i64> %52, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %54 = extractelement <4 x i64> %50, i64 0
  %55 = getelementptr inbounds i8, i8* %0, i64 %54
  %56 = bitcast i8* %55 to <4 x i8>*
  %57 = load <4 x i8>, <4 x i8>* %56, align 1, !tbaa !5
  %58 = getelementptr inbounds i8, i8* %55, i64 4
  %59 = bitcast i8* %58 to <4 x i8>*
  %60 = load <4 x i8>, <4 x i8>* %59, align 1, !tbaa !5
  %61 = shufflevector <4 x i8> %45, <4 x i8> %57, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %62 = shufflevector <4 x i8> %57, <4 x i8> %60, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %63 = zext <4 x i8> %61 to <4 x i32>
  %64 = zext <4 x i8> %62 to <4 x i32>
  %65 = mul nuw nsw <4 x i32> %63, <i32 10, i32 10, i32 10, i32 10>
  %66 = mul nuw nsw <4 x i32> %64, <i32 10, i32 10, i32 10, i32 10>
  %67 = zext <4 x i8> %57 to <4 x i32>
  %68 = zext <4 x i8> %60 to <4 x i32>
  %69 = add nuw nsw <4 x i32> %65, %67
  %70 = add nuw nsw <4 x i32> %66, %68
  %71 = and <4 x i32> %69, <i32 3, i32 3, i32 3, i32 3>
  %72 = and <4 x i32> %70, <i32 3, i32 3, i32 3, i32 3>
  %73 = icmp eq <4 x i32> %71, zeroinitializer
  %74 = icmp eq <4 x i32> %72, zeroinitializer
  %75 = trunc <4 x i64> %50 to <4 x i32>
  %76 = trunc <4 x i64> %53 to <4 x i32>
  %77 = select <4 x i1> %73, <4 x i32> %75, <4 x i32> zeroinitializer
  %78 = select <4 x i1> %74, <4 x i32> %76, <4 x i32> zeroinitializer
  %79 = add <4 x i32> %46, %77
  %80 = add <4 x i32> %47, %78
  %81 = add nuw i64 %44, 8
  %82 = icmp eq i64 %81, %40
  br i1 %82, label %83, label %43, !llvm.loop !10

83:                                               ; preds = %43
  %84 = add <4 x i32> %80, %79
  %85 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %84)
  %86 = icmp eq i64 %39, 0
  %87 = extractelement <4 x i8> %60, i64 3
  br i1 %86, label %126, label %88

88:                                               ; preds = %33, %83
  %89 = phi i8 [ %87, %83 ], [ %36, %33 ]
  %90 = phi i64 [ %40, %83 ], [ 0, %33 ]
  %91 = phi i32 [ %85, %83 ], [ %31, %33 ]
  br label %128

92:                                               ; preds = %121, %10
  %93 = phi i64 [ 0, %10 ], [ %123, %121 ]
  %94 = phi i32 [ 0, %10 ], [ %122, %121 ]
  %95 = phi i64 [ 0, %10 ], [ %124, %121 ]
  %96 = getelementptr inbounds i8, i8* %0, i64 %93
  %97 = load i8, i8* %96, align 1, !tbaa !5
  switch i8 %97, label %100 [
    i8 52, label %98
    i8 56, label %98
    i8 48, label %98
  ]

98:                                               ; preds = %92, %92, %92
  %99 = add nsw i32 %94, 1
  br label %100

100:                                              ; preds = %92, %98
  %101 = phi i32 [ %99, %98 ], [ %94, %92 ]
  %102 = or i64 %93, 1
  %103 = getelementptr inbounds i8, i8* %0, i64 %102
  %104 = load i8, i8* %103, align 1, !tbaa !5
  switch i8 %104, label %107 [
    i8 52, label %105
    i8 56, label %105
    i8 48, label %105
  ]

105:                                              ; preds = %100, %100, %100
  %106 = add nsw i32 %101, 1
  br label %107

107:                                              ; preds = %105, %100
  %108 = phi i32 [ %106, %105 ], [ %101, %100 ]
  %109 = or i64 %93, 2
  %110 = getelementptr inbounds i8, i8* %0, i64 %109
  %111 = load i8, i8* %110, align 1, !tbaa !5
  switch i8 %111, label %114 [
    i8 52, label %112
    i8 56, label %112
    i8 48, label %112
  ]

112:                                              ; preds = %107, %107, %107
  %113 = add nsw i32 %108, 1
  br label %114

114:                                              ; preds = %112, %107
  %115 = phi i32 [ %113, %112 ], [ %108, %107 ]
  %116 = or i64 %93, 3
  %117 = getelementptr inbounds i8, i8* %0, i64 %116
  %118 = load i8, i8* %117, align 1, !tbaa !5
  switch i8 %118, label %121 [
    i8 52, label %119
    i8 56, label %119
    i8 48, label %119
  ]

119:                                              ; preds = %114, %114, %114
  %120 = add nsw i32 %115, 1
  br label %121

121:                                              ; preds = %119, %114
  %122 = phi i32 [ %120, %119 ], [ %115, %114 ]
  %123 = add nuw nsw i64 %93, 4
  %124 = add i64 %95, 4
  %125 = icmp eq i64 %124, %11
  br i1 %125, label %12, label %92, !llvm.loop !13

126:                                              ; preds = %128, %83, %1, %30
  %127 = phi i32 [ %31, %30 ], [ 0, %1 ], [ %85, %83 ], [ %143, %128 ]
  ret i32 %127

128:                                              ; preds = %88, %128
  %129 = phi i8 [ %136, %128 ], [ %89, %88 ]
  %130 = phi i64 [ %134, %128 ], [ %90, %88 ]
  %131 = phi i32 [ %143, %128 ], [ %91, %88 ]
  %132 = zext i8 %129 to i32
  %133 = mul nuw nsw i32 %132, 10
  %134 = add nuw nsw i64 %130, 1
  %135 = getelementptr inbounds i8, i8* %0, i64 %134
  %136 = load i8, i8* %135, align 1, !tbaa !5
  %137 = zext i8 %136 to i32
  %138 = add nuw nsw i32 %133, %137
  %139 = and i32 %138, 3
  %140 = icmp eq i32 %139, 0
  %141 = trunc i64 %134 to i32
  %142 = select i1 %140, i32 %141, i32 0
  %143 = add i32 %131, %142
  %144 = icmp eq i64 %134, %35
  br i1 %144, label %126, label %128, !llvm.loop !14
}

; Function Attrs: argmemonly mustprogress nofree nounwind readonly willreturn
declare i64 @strlen(i8* nocapture noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_NUMBER_SUBSTRINGS_DIVISIBLE_4_STRING_INTEGERS_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.unroll.disable"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11, !15, !12}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
