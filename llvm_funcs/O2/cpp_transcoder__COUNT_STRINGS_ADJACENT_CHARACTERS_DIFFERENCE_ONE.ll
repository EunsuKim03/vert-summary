; ModuleID = 'llvm/cpp_transcoder/COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE/COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE/COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldi(i32 noundef %0) local_unnamed_addr #3 {
  %2 = add i32 %0, 1
  %3 = zext i32 %2 to i64
  %4 = alloca [27 x i32], i64 %3, align 16
  %5 = bitcast [27 x i32]* %4 to i8*
  %6 = mul nuw nsw i64 %3, 108
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %5, i8 0, i64 %6, i1 false)
  %7 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 0
  %8 = bitcast i32* %7 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %8, align 4, !tbaa !5
  %9 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 4
  %10 = bitcast i32* %9 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %10, align 4, !tbaa !5
  %11 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 8
  %12 = bitcast i32* %11 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %12, align 4, !tbaa !5
  %13 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 12
  %14 = bitcast i32* %13 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %14, align 4, !tbaa !5
  %15 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 16
  %16 = bitcast i32* %15 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %16, align 4, !tbaa !5
  %17 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 20
  %18 = bitcast i32* %17 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %18, align 4, !tbaa !5
  %19 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 24
  store i32 1, i32* %19, align 4, !tbaa !5
  %20 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 1, i64 25
  store i32 1, i32* %20, align 16, !tbaa !5
  %21 = icmp slt i32 %0, 2
  br i1 %21, label %144, label %22

22:                                               ; preds = %1, %22
  %23 = phi i64 [ %142, %22 ], [ 2, %1 ]
  %24 = add nsw i64 %23, -1
  %25 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 0
  %26 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 1
  %27 = load i32, i32* %26, align 4, !tbaa !5
  store i32 %27, i32* %25, align 4, !tbaa !5
  %28 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 0
  %29 = bitcast i32* %28 to <2 x i32>*
  %30 = load <2 x i32>, <2 x i32>* %29, align 4, !tbaa !5
  %31 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 2
  %32 = bitcast i32* %31 to <2 x i32>*
  %33 = load <2 x i32>, <2 x i32>* %32, align 4, !tbaa !5
  %34 = add nsw <2 x i32> %33, %30
  %35 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 1
  %36 = bitcast i32* %35 to <2 x i32>*
  store <2 x i32> %34, <2 x i32>* %36, align 4, !tbaa !5
  %37 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 2
  %38 = bitcast i32* %37 to <2 x i32>*
  %39 = load <2 x i32>, <2 x i32>* %38, align 4, !tbaa !5
  %40 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 4
  %41 = bitcast i32* %40 to <2 x i32>*
  %42 = load <2 x i32>, <2 x i32>* %41, align 4, !tbaa !5
  %43 = add nsw <2 x i32> %42, %39
  %44 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 3
  %45 = bitcast i32* %44 to <2 x i32>*
  store <2 x i32> %43, <2 x i32>* %45, align 4, !tbaa !5
  %46 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 4
  %47 = bitcast i32* %46 to <2 x i32>*
  %48 = load <2 x i32>, <2 x i32>* %47, align 4, !tbaa !5
  %49 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 6
  %50 = bitcast i32* %49 to <2 x i32>*
  %51 = load <2 x i32>, <2 x i32>* %50, align 4, !tbaa !5
  %52 = add nsw <2 x i32> %51, %48
  %53 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 5
  %54 = bitcast i32* %53 to <2 x i32>*
  store <2 x i32> %52, <2 x i32>* %54, align 4, !tbaa !5
  %55 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 6
  %56 = bitcast i32* %55 to <2 x i32>*
  %57 = load <2 x i32>, <2 x i32>* %56, align 4, !tbaa !5
  %58 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 8
  %59 = bitcast i32* %58 to <2 x i32>*
  %60 = load <2 x i32>, <2 x i32>* %59, align 4, !tbaa !5
  %61 = add nsw <2 x i32> %60, %57
  %62 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 7
  %63 = bitcast i32* %62 to <2 x i32>*
  store <2 x i32> %61, <2 x i32>* %63, align 4, !tbaa !5
  %64 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 8
  %65 = bitcast i32* %64 to <2 x i32>*
  %66 = load <2 x i32>, <2 x i32>* %65, align 4, !tbaa !5
  %67 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 10
  %68 = bitcast i32* %67 to <2 x i32>*
  %69 = load <2 x i32>, <2 x i32>* %68, align 4, !tbaa !5
  %70 = add nsw <2 x i32> %69, %66
  %71 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 9
  %72 = bitcast i32* %71 to <2 x i32>*
  store <2 x i32> %70, <2 x i32>* %72, align 4, !tbaa !5
  %73 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 10
  %74 = bitcast i32* %73 to <2 x i32>*
  %75 = load <2 x i32>, <2 x i32>* %74, align 4, !tbaa !5
  %76 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 12
  %77 = bitcast i32* %76 to <2 x i32>*
  %78 = load <2 x i32>, <2 x i32>* %77, align 4, !tbaa !5
  %79 = add nsw <2 x i32> %78, %75
  %80 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 11
  %81 = bitcast i32* %80 to <2 x i32>*
  store <2 x i32> %79, <2 x i32>* %81, align 4, !tbaa !5
  %82 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 12
  %83 = bitcast i32* %82 to <2 x i32>*
  %84 = load <2 x i32>, <2 x i32>* %83, align 4, !tbaa !5
  %85 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 14
  %86 = bitcast i32* %85 to <2 x i32>*
  %87 = load <2 x i32>, <2 x i32>* %86, align 4, !tbaa !5
  %88 = add nsw <2 x i32> %87, %84
  %89 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 13
  %90 = bitcast i32* %89 to <2 x i32>*
  store <2 x i32> %88, <2 x i32>* %90, align 4, !tbaa !5
  %91 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 14
  %92 = bitcast i32* %91 to <2 x i32>*
  %93 = load <2 x i32>, <2 x i32>* %92, align 4, !tbaa !5
  %94 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 16
  %95 = bitcast i32* %94 to <2 x i32>*
  %96 = load <2 x i32>, <2 x i32>* %95, align 4, !tbaa !5
  %97 = add nsw <2 x i32> %96, %93
  %98 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 15
  %99 = bitcast i32* %98 to <2 x i32>*
  store <2 x i32> %97, <2 x i32>* %99, align 4, !tbaa !5
  %100 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 16
  %101 = bitcast i32* %100 to <2 x i32>*
  %102 = load <2 x i32>, <2 x i32>* %101, align 4, !tbaa !5
  %103 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 18
  %104 = bitcast i32* %103 to <2 x i32>*
  %105 = load <2 x i32>, <2 x i32>* %104, align 4, !tbaa !5
  %106 = add nsw <2 x i32> %105, %102
  %107 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 17
  %108 = bitcast i32* %107 to <2 x i32>*
  store <2 x i32> %106, <2 x i32>* %108, align 4, !tbaa !5
  %109 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 18
  %110 = bitcast i32* %109 to <2 x i32>*
  %111 = load <2 x i32>, <2 x i32>* %110, align 4, !tbaa !5
  %112 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 20
  %113 = bitcast i32* %112 to <2 x i32>*
  %114 = load <2 x i32>, <2 x i32>* %113, align 4, !tbaa !5
  %115 = add nsw <2 x i32> %114, %111
  %116 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 19
  %117 = bitcast i32* %116 to <2 x i32>*
  store <2 x i32> %115, <2 x i32>* %117, align 4, !tbaa !5
  %118 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 20
  %119 = bitcast i32* %118 to <2 x i32>*
  %120 = load <2 x i32>, <2 x i32>* %119, align 4, !tbaa !5
  %121 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 22
  %122 = bitcast i32* %121 to <2 x i32>*
  %123 = load <2 x i32>, <2 x i32>* %122, align 4, !tbaa !5
  %124 = add nsw <2 x i32> %123, %120
  %125 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 21
  %126 = bitcast i32* %125 to <2 x i32>*
  store <2 x i32> %124, <2 x i32>* %126, align 4, !tbaa !5
  %127 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 22
  %128 = bitcast i32* %127 to <2 x i32>*
  %129 = load <2 x i32>, <2 x i32>* %128, align 4, !tbaa !5
  %130 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 24
  %131 = bitcast i32* %130 to <2 x i32>*
  %132 = load <2 x i32>, <2 x i32>* %131, align 4, !tbaa !5
  %133 = add nsw <2 x i32> %132, %129
  %134 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 23
  %135 = bitcast i32* %134 to <2 x i32>*
  store <2 x i32> %133, <2 x i32>* %135, align 4, !tbaa !5
  %136 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 24
  %137 = load i32, i32* %136, align 4, !tbaa !5
  %138 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %24, i64 26
  %139 = load i32, i32* %138, align 4, !tbaa !5
  %140 = add nsw i32 %139, %137
  %141 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %23, i64 25
  store i32 %140, i32* %141, align 4, !tbaa !5
  %142 = add nuw nsw i64 %23, 1
  %143 = icmp eq i64 %142, %3
  br i1 %143, label %144, label %22, !llvm.loop !9

144:                                              ; preds = %22, %1
  %145 = sext i32 %0 to i64
  %146 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %145, i64 0
  %147 = load i32, i32* %146, align 4, !tbaa !5
  %148 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %145, i64 1
  %149 = load i32, i32* %148, align 4, !tbaa !5
  %150 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %145, i64 2
  %151 = bitcast i32* %150 to <8 x i32>*
  %152 = load <8 x i32>, <8 x i32>* %151, align 4, !tbaa !5
  %153 = getelementptr inbounds [27 x i32], [27 x i32]* %4, i64 %145, i64 10
  %154 = bitcast i32* %153 to <16 x i32>*
  %155 = load <16 x i32>, <16 x i32>* %154, align 4, !tbaa !5
  %156 = call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %155)
  %157 = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %152)
  %158 = add nsw i32 %156, %157
  %159 = add nsw i32 %158, %149
  %160 = add nsw i32 %159, %147
  ret i32 %160
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_COUNT_STRINGS_ADJACENT_CHARACTERS_DIFFERENCE_ONE_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #6

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #6

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
