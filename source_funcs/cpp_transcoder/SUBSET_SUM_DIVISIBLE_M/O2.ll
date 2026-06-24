; ModuleID = 'llvm/cpp_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SUBSET_SUM_DIVISIBLE_M/SUBSET_SUM_DIVISIBLE_M_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUBSET_SUM_DIVISIBLE_M_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind uwtable
define dso_local noundef i32 @_Z6f_goldPiii(i32* nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 {
  %4 = icmp sgt i32 %1, %2
  br i1 %4, label %166, label %5

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  %7 = tail call i8* @llvm.stacksave()
  %8 = alloca i8, i64 %6, align 16
  %9 = sext i32 %2 to i64
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %11, label %161

11:                                               ; preds = %5
  %12 = icmp sgt i32 %2, 0
  %13 = zext i32 %1 to i64
  %14 = icmp ult i32 %2, 16
  %15 = and i64 %6, 4294967280
  %16 = icmp eq i64 %15, %6
  br label %17

17:                                               ; preds = %11, %143
  %18 = phi i64 [ 0, %11 ], [ %149, %143 ]
  %19 = load i8, i8* %8, align 16, !tbaa !5, !range !9
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %164

21:                                               ; preds = %17
  %22 = tail call i8* @llvm.stacksave()
  %23 = alloca i8, i64 %6, align 16
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %23, i8 0, i64 %9, i1 false)
  br i1 %12, label %24, label %143

24:                                               ; preds = %21
  %25 = getelementptr inbounds i32, i32* %0, i64 %18
  br label %122

26:                                               ; preds = %137
  br i1 %12, label %27, label %143

27:                                               ; preds = %26
  br i1 %14, label %120, label %28

28:                                               ; preds = %27, %116
  %29 = phi i64 [ %117, %116 ], [ 0, %27 ]
  %30 = or i64 %29, 8
  %31 = getelementptr inbounds i8, i8* %23, i64 %29
  %32 = bitcast i8* %31 to <8 x i8>*
  %33 = load <8 x i8>, <8 x i8>* %32, align 16, !tbaa !5
  %34 = getelementptr inbounds i8, i8* %31, i64 8
  %35 = bitcast i8* %34 to <8 x i8>*
  %36 = load <8 x i8>, <8 x i8>* %35, align 8, !tbaa !5
  %37 = icmp ne <8 x i8> %33, zeroinitializer
  %38 = icmp ne <8 x i8> %36, zeroinitializer
  %39 = extractelement <8 x i1> %37, i64 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = getelementptr inbounds i8, i8* %8, i64 %29
  store i8 1, i8* %41, align 16, !tbaa !5
  br label %42

42:                                               ; preds = %40, %28
  %43 = extractelement <8 x i1> %37, i64 1
  br i1 %43, label %44, label %47

44:                                               ; preds = %42
  %45 = or i64 %29, 1
  %46 = getelementptr inbounds i8, i8* %8, i64 %45
  store i8 1, i8* %46, align 1, !tbaa !5
  br label %47

47:                                               ; preds = %44, %42
  %48 = extractelement <8 x i1> %37, i64 2
  br i1 %48, label %49, label %52

49:                                               ; preds = %47
  %50 = or i64 %29, 2
  %51 = getelementptr inbounds i8, i8* %8, i64 %50
  store i8 1, i8* %51, align 2, !tbaa !5
  br label %52

52:                                               ; preds = %49, %47
  %53 = extractelement <8 x i1> %37, i64 3
  br i1 %53, label %54, label %57

54:                                               ; preds = %52
  %55 = or i64 %29, 3
  %56 = getelementptr inbounds i8, i8* %8, i64 %55
  store i8 1, i8* %56, align 1, !tbaa !5
  br label %57

57:                                               ; preds = %54, %52
  %58 = extractelement <8 x i1> %37, i64 4
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = or i64 %29, 4
  %61 = getelementptr inbounds i8, i8* %8, i64 %60
  store i8 1, i8* %61, align 4, !tbaa !5
  br label %62

62:                                               ; preds = %59, %57
  %63 = extractelement <8 x i1> %37, i64 5
  br i1 %63, label %64, label %67

64:                                               ; preds = %62
  %65 = or i64 %29, 5
  %66 = getelementptr inbounds i8, i8* %8, i64 %65
  store i8 1, i8* %66, align 1, !tbaa !5
  br label %67

67:                                               ; preds = %64, %62
  %68 = extractelement <8 x i1> %37, i64 6
  br i1 %68, label %69, label %72

69:                                               ; preds = %67
  %70 = or i64 %29, 6
  %71 = getelementptr inbounds i8, i8* %8, i64 %70
  store i8 1, i8* %71, align 2, !tbaa !5
  br label %72

72:                                               ; preds = %69, %67
  %73 = extractelement <8 x i1> %37, i64 7
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = or i64 %29, 7
  %76 = getelementptr inbounds i8, i8* %8, i64 %75
  store i8 1, i8* %76, align 1, !tbaa !5
  br label %77

77:                                               ; preds = %74, %72
  %78 = extractelement <8 x i1> %38, i64 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %77
  %80 = getelementptr inbounds i8, i8* %8, i64 %30
  store i8 1, i8* %80, align 8, !tbaa !5
  br label %81

81:                                               ; preds = %79, %77
  %82 = extractelement <8 x i1> %38, i64 1
  br i1 %82, label %83, label %86

83:                                               ; preds = %81
  %84 = or i64 %29, 9
  %85 = getelementptr inbounds i8, i8* %8, i64 %84
  store i8 1, i8* %85, align 1, !tbaa !5
  br label %86

86:                                               ; preds = %83, %81
  %87 = extractelement <8 x i1> %38, i64 2
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = or i64 %29, 10
  %90 = getelementptr inbounds i8, i8* %8, i64 %89
  store i8 1, i8* %90, align 2, !tbaa !5
  br label %91

91:                                               ; preds = %88, %86
  %92 = extractelement <8 x i1> %38, i64 3
  br i1 %92, label %93, label %96

93:                                               ; preds = %91
  %94 = or i64 %29, 11
  %95 = getelementptr inbounds i8, i8* %8, i64 %94
  store i8 1, i8* %95, align 1, !tbaa !5
  br label %96

96:                                               ; preds = %93, %91
  %97 = extractelement <8 x i1> %38, i64 4
  br i1 %97, label %98, label %101

98:                                               ; preds = %96
  %99 = or i64 %29, 12
  %100 = getelementptr inbounds i8, i8* %8, i64 %99
  store i8 1, i8* %100, align 4, !tbaa !5
  br label %101

101:                                              ; preds = %98, %96
  %102 = extractelement <8 x i1> %38, i64 5
  br i1 %102, label %103, label %106

103:                                              ; preds = %101
  %104 = or i64 %29, 13
  %105 = getelementptr inbounds i8, i8* %8, i64 %104
  store i8 1, i8* %105, align 1, !tbaa !5
  br label %106

106:                                              ; preds = %103, %101
  %107 = extractelement <8 x i1> %38, i64 6
  br i1 %107, label %108, label %111

108:                                              ; preds = %106
  %109 = or i64 %29, 14
  %110 = getelementptr inbounds i8, i8* %8, i64 %109
  store i8 1, i8* %110, align 2, !tbaa !5
  br label %111

111:                                              ; preds = %108, %106
  %112 = extractelement <8 x i1> %38, i64 7
  br i1 %112, label %113, label %116

113:                                              ; preds = %111
  %114 = or i64 %29, 15
  %115 = getelementptr inbounds i8, i8* %8, i64 %114
  store i8 1, i8* %115, align 1, !tbaa !5
  br label %116

116:                                              ; preds = %113, %111
  %117 = add nuw i64 %29, 16
  %118 = icmp eq i64 %117, %15
  br i1 %118, label %119, label %28, !llvm.loop !10

119:                                              ; preds = %116
  br i1 %16, label %143, label %120

120:                                              ; preds = %27, %119
  %121 = phi i64 [ 0, %27 ], [ %15, %119 ]
  br label %151

122:                                              ; preds = %140, %24
  %123 = phi i8 [ 0, %24 ], [ %142, %140 ]
  %124 = phi i64 [ 0, %24 ], [ %138, %140 ]
  %125 = icmp eq i8 %123, 0
  br i1 %125, label %137, label %126

126:                                              ; preds = %122
  %127 = load i32, i32* %25, align 4, !tbaa !13
  %128 = trunc i64 %124 to i32
  %129 = add nsw i32 %127, %128
  %130 = srem i32 %129, %2
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i8, i8* %8, i64 %131
  %133 = load i8, i8* %132, align 1, !tbaa !5, !range !9
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %126
  %136 = getelementptr inbounds i8, i8* %23, i64 %131
  store i8 1, i8* %136, align 1, !tbaa !5
  br label %137

137:                                              ; preds = %122, %135, %126
  %138 = add nuw nsw i64 %124, 1
  %139 = icmp eq i64 %138, %6
  br i1 %139, label %26, label %140, !llvm.loop !15

140:                                              ; preds = %137
  %141 = getelementptr inbounds i8, i8* %8, i64 %138
  %142 = load i8, i8* %141, align 1, !tbaa !5, !range !9
  br label %122

143:                                              ; preds = %158, %119, %21, %26
  %144 = getelementptr inbounds i32, i32* %0, i64 %18
  %145 = load i32, i32* %144, align 4, !tbaa !13
  %146 = srem i32 %145, %2
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %8, i64 %147
  store i8 1, i8* %148, align 1, !tbaa !5
  tail call void @llvm.stackrestore(i8* %22)
  %149 = add nuw nsw i64 %18, 1
  %150 = icmp eq i64 %149, %13
  br i1 %150, label %161, label %17, !llvm.loop !16

151:                                              ; preds = %120, %158
  %152 = phi i64 [ %159, %158 ], [ %121, %120 ]
  %153 = getelementptr inbounds i8, i8* %23, i64 %152
  %154 = load i8, i8* %153, align 1, !tbaa !5, !range !9
  %155 = icmp eq i8 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %151
  %157 = getelementptr inbounds i8, i8* %8, i64 %152
  store i8 1, i8* %157, align 1, !tbaa !5
  br label %158

158:                                              ; preds = %151, %156
  %159 = add nuw nsw i64 %152, 1
  %160 = icmp eq i64 %159, %6
  br i1 %160, label %143, label %151, !llvm.loop !17

161:                                              ; preds = %143, %5
  %162 = load i8, i8* %8, align 16, !tbaa !5, !range !9
  %163 = zext i8 %162 to i32
  br label %164

164:                                              ; preds = %17, %161
  %165 = phi i32 [ %163, %161 ], [ 1, %17 ]
  tail call void @llvm.stackrestore(i8* %7)
  br label %166

166:                                              ; preds = %3, %164
  %167 = phi i32 [ %165, %164 ], [ 1, %3 ]
  ret i32 %167
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nosync nounwind willreturn
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUBSET_SUM_DIVISIBLE_M_reprocessed.cpp() #6 section ".text.startup" {
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
!6 = !{!"bool", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{i8 0, i8 2}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !7, i64 0}
!15 = distinct !{!15, !11}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11, !18, !12}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
