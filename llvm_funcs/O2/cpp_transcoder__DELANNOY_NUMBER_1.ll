; ModuleID = 'benchmark/cpp_transcoder/DELANNOY_NUMBER_1/DELANNOY_NUMBER_1_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DELANNOY_NUMBER_1/DELANNOY_NUMBER_1_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DELANNOY_NUMBER_1_processed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add i32 %1, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %0, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %4, %6
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %1, 0
  br i1 %9, label %141, label %10

10:                                               ; preds = %2
  %11 = add nsw i64 %4, -1
  %12 = and i64 %4, 3
  %13 = icmp ult i64 %11, 3
  br i1 %13, label %16, label %14

14:                                               ; preds = %10
  %15 = and i64 %4, 4294967292
  br label %101

16:                                               ; preds = %101, %10
  %17 = phi i64 [ 0, %10 ], [ %115, %101 ]
  %18 = icmp eq i64 %12, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %16, %19
  %20 = phi i64 [ %24, %19 ], [ %17, %16 ]
  %21 = phi i64 [ %25, %19 ], [ 0, %16 ]
  %22 = mul nuw nsw i64 %20, %6
  %23 = getelementptr inbounds i32, i32* %8, i64 %22
  store i32 1, i32* %23, align 4, !tbaa !5
  %24 = add nuw nsw i64 %20, 1
  %25 = add i64 %21, 1
  %26 = icmp eq i64 %25, %12
  br i1 %26, label %27, label %19, !llvm.loop !9

27:                                               ; preds = %19, %16
  br i1 %9, label %141, label %28

28:                                               ; preds = %27
  %29 = icmp ult i32 %3, 8
  br i1 %29, label %99, label %30

30:                                               ; preds = %28
  %31 = and i64 %4, 4294967288
  %32 = add nsw i64 %31, -8
  %33 = lshr exact i64 %32, 3
  %34 = add nuw nsw i64 %33, 1
  %35 = and i64 %34, 7
  %36 = icmp ult i64 %32, 56
  br i1 %36, label %84, label %37

37:                                               ; preds = %30
  %38 = and i64 %34, 4611686018427387896
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %81, %39 ]
  %41 = phi i64 [ 0, %37 ], [ %82, %39 ]
  %42 = getelementptr inbounds i32, i32* %8, i64 %40
  %43 = bitcast i32* %42 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %43, align 16, !tbaa !5
  %44 = getelementptr inbounds i32, i32* %42, i64 4
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %45, align 16, !tbaa !5
  %46 = or i64 %40, 8
  %47 = getelementptr inbounds i32, i32* %8, i64 %46
  %48 = bitcast i32* %47 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %48, align 16, !tbaa !5
  %49 = getelementptr inbounds i32, i32* %47, i64 4
  %50 = bitcast i32* %49 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %50, align 16, !tbaa !5
  %51 = or i64 %40, 16
  %52 = getelementptr inbounds i32, i32* %8, i64 %51
  %53 = bitcast i32* %52 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %53, align 16, !tbaa !5
  %54 = getelementptr inbounds i32, i32* %52, i64 4
  %55 = bitcast i32* %54 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %55, align 16, !tbaa !5
  %56 = or i64 %40, 24
  %57 = getelementptr inbounds i32, i32* %8, i64 %56
  %58 = bitcast i32* %57 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %58, align 16, !tbaa !5
  %59 = getelementptr inbounds i32, i32* %57, i64 4
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %60, align 16, !tbaa !5
  %61 = or i64 %40, 32
  %62 = getelementptr inbounds i32, i32* %8, i64 %61
  %63 = bitcast i32* %62 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %63, align 16, !tbaa !5
  %64 = getelementptr inbounds i32, i32* %62, i64 4
  %65 = bitcast i32* %64 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %65, align 16, !tbaa !5
  %66 = or i64 %40, 40
  %67 = getelementptr inbounds i32, i32* %8, i64 %66
  %68 = bitcast i32* %67 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %68, align 16, !tbaa !5
  %69 = getelementptr inbounds i32, i32* %67, i64 4
  %70 = bitcast i32* %69 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %70, align 16, !tbaa !5
  %71 = or i64 %40, 48
  %72 = getelementptr inbounds i32, i32* %8, i64 %71
  %73 = bitcast i32* %72 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %73, align 16, !tbaa !5
  %74 = getelementptr inbounds i32, i32* %72, i64 4
  %75 = bitcast i32* %74 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %75, align 16, !tbaa !5
  %76 = or i64 %40, 56
  %77 = getelementptr inbounds i32, i32* %8, i64 %76
  %78 = bitcast i32* %77 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %78, align 16, !tbaa !5
  %79 = getelementptr inbounds i32, i32* %77, i64 4
  %80 = bitcast i32* %79 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %80, align 16, !tbaa !5
  %81 = add nuw i64 %40, 64
  %82 = add nuw i64 %41, 8
  %83 = icmp eq i64 %82, %38
  br i1 %83, label %84, label %39, !llvm.loop !11

84:                                               ; preds = %39, %30
  %85 = phi i64 [ 0, %30 ], [ %81, %39 ]
  %86 = icmp eq i64 %35, 0
  br i1 %86, label %97, label %87

87:                                               ; preds = %84, %87
  %88 = phi i64 [ %94, %87 ], [ %85, %84 ]
  %89 = phi i64 [ %95, %87 ], [ 0, %84 ]
  %90 = getelementptr inbounds i32, i32* %8, i64 %88
  %91 = bitcast i32* %90 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %91, align 16, !tbaa !5
  %92 = getelementptr inbounds i32, i32* %90, i64 4
  %93 = bitcast i32* %92 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %93, align 16, !tbaa !5
  %94 = add nuw i64 %88, 8
  %95 = add i64 %89, 1
  %96 = icmp eq i64 %95, %35
  br i1 %96, label %97, label %87, !llvm.loop !14

97:                                               ; preds = %87, %84
  %98 = icmp eq i64 %31, %4
  br i1 %98, label %118, label %99

99:                                               ; preds = %28, %97
  %100 = phi i64 [ 0, %28 ], [ %31, %97 ]
  br label %127

101:                                              ; preds = %101, %14
  %102 = phi i64 [ 0, %14 ], [ %115, %101 ]
  %103 = phi i64 [ 0, %14 ], [ %116, %101 ]
  %104 = mul nuw nsw i64 %102, %6
  %105 = getelementptr inbounds i32, i32* %8, i64 %104
  store i32 1, i32* %105, align 16, !tbaa !5
  %106 = or i64 %102, 1
  %107 = mul nuw nsw i64 %106, %6
  %108 = getelementptr inbounds i32, i32* %8, i64 %107
  store i32 1, i32* %108, align 4, !tbaa !5
  %109 = or i64 %102, 2
  %110 = mul nuw nsw i64 %109, %6
  %111 = getelementptr inbounds i32, i32* %8, i64 %110
  store i32 1, i32* %111, align 8, !tbaa !5
  %112 = or i64 %102, 3
  %113 = mul nuw nsw i64 %112, %6
  %114 = getelementptr inbounds i32, i32* %8, i64 %113
  store i32 1, i32* %114, align 4, !tbaa !5
  %115 = add nuw nsw i64 %102, 4
  %116 = add i64 %103, 4
  %117 = icmp eq i64 %116, %15
  br i1 %117, label %16, label %101, !llvm.loop !15

118:                                              ; preds = %127, %97
  %119 = icmp slt i32 %1, 1
  br i1 %119, label %141, label %120

120:                                              ; preds = %118
  %121 = icmp slt i32 %0, 1
  %122 = add nsw i64 %6, -1
  %123 = and i64 %122, 1
  %124 = icmp eq i32 %5, 2
  %125 = and i64 %122, -2
  %126 = icmp eq i64 %123, 0
  br label %132

127:                                              ; preds = %99, %127
  %128 = phi i64 [ %130, %127 ], [ %100, %99 ]
  %129 = getelementptr inbounds i32, i32* %8, i64 %128
  store i32 1, i32* %129, align 4, !tbaa !5
  %130 = add nuw nsw i64 %128, 1
  %131 = icmp eq i64 %130, %4
  br i1 %131, label %118, label %127, !llvm.loop !16

132:                                              ; preds = %120, %160
  %133 = phi i64 [ 1, %120 ], [ %161, %160 ]
  br i1 %121, label %160, label %134

134:                                              ; preds = %132
  %135 = add nsw i64 %133, -1
  %136 = mul nuw nsw i64 %135, %6
  %137 = getelementptr inbounds i32, i32* %8, i64 %136
  %138 = mul nuw nsw i64 %133, %6
  %139 = getelementptr inbounds i32, i32* %8, i64 %138
  %140 = load i32, i32* %139, align 4, !tbaa !5
  br i1 %124, label %148, label %163

141:                                              ; preds = %160, %2, %27, %118
  %142 = sext i32 %1 to i64
  %143 = mul nsw i64 %142, %6
  %144 = getelementptr inbounds i32, i32* %8, i64 %143
  %145 = sext i32 %0 to i64
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !5
  ret i32 %147

148:                                              ; preds = %163, %134
  %149 = phi i32 [ %140, %134 ], [ %181, %163 ]
  %150 = phi i64 [ 1, %134 ], [ %183, %163 ]
  br i1 %126, label %160, label %151

151:                                              ; preds = %148
  %152 = getelementptr inbounds i32, i32* %137, i64 %150
  %153 = load i32, i32* %152, align 4, !tbaa !5
  %154 = add nsw i64 %150, -1
  %155 = getelementptr inbounds i32, i32* %137, i64 %154
  %156 = load i32, i32* %155, align 4, !tbaa !5
  %157 = add nsw i32 %156, %153
  %158 = add nsw i32 %157, %149
  %159 = getelementptr inbounds i32, i32* %139, i64 %150
  store i32 %158, i32* %159, align 4, !tbaa !5
  br label %160

160:                                              ; preds = %151, %148, %132
  %161 = add nuw nsw i64 %133, 1
  %162 = icmp eq i64 %161, %4
  br i1 %162, label %141, label %132, !llvm.loop !18

163:                                              ; preds = %134, %163
  %164 = phi i32 [ %181, %163 ], [ %140, %134 ]
  %165 = phi i64 [ %183, %163 ], [ 1, %134 ]
  %166 = phi i64 [ %184, %163 ], [ 0, %134 ]
  %167 = getelementptr inbounds i32, i32* %137, i64 %165
  %168 = load i32, i32* %167, align 4, !tbaa !5
  %169 = add nsw i64 %165, -1
  %170 = getelementptr inbounds i32, i32* %137, i64 %169
  %171 = load i32, i32* %170, align 4, !tbaa !5
  %172 = add nsw i32 %171, %168
  %173 = add nsw i32 %172, %164
  %174 = getelementptr inbounds i32, i32* %139, i64 %165
  store i32 %173, i32* %174, align 4, !tbaa !5
  %175 = add nuw nsw i64 %165, 1
  %176 = getelementptr inbounds i32, i32* %137, i64 %175
  %177 = load i32, i32* %176, align 4, !tbaa !5
  %178 = getelementptr inbounds i32, i32* %137, i64 %165
  %179 = load i32, i32* %178, align 4, !tbaa !5
  %180 = add nsw i32 %179, %177
  %181 = add nsw i32 %180, %173
  %182 = getelementptr inbounds i32, i32* %139, i64 %175
  store i32 %181, i32* %182, align 4, !tbaa !5
  %183 = add nuw nsw i64 %165, 2
  %184 = add i64 %166, 2
  %185 = icmp eq i64 %184, %125
  br i1 %185, label %148, label %163, !llvm.loop !19
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DELANNOY_NUMBER_1_processed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readnone uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !10}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12, !17, !13}
!17 = !{!"llvm.loop.unroll.runtime.disable"}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
