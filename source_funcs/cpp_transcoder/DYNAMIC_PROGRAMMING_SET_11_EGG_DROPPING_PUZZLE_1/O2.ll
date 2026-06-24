; ModuleID = 'llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1/DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldii(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = add i32 %0, 1
  %4 = zext i32 %3 to i64
  %5 = add i32 %1, 1
  %6 = zext i32 %5 to i64
  %7 = mul nuw i64 %6, %4
  %8 = alloca i32, i64 %7, align 16
  %9 = icmp slt i32 %0, 1
  br i1 %9, label %29, label %10

10:                                               ; preds = %2
  %11 = add nsw i64 %4, -1
  %12 = add nsw i64 %4, -2
  %13 = and i64 %11, 3
  %14 = icmp ult i64 %12, 3
  br i1 %14, label %17, label %15

15:                                               ; preds = %10
  %16 = and i64 %11, -4
  br label %102

17:                                               ; preds = %102, %10
  %18 = phi i64 [ 1, %10 ], [ %120, %102 ]
  %19 = icmp eq i64 %13, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %17, %20
  %21 = phi i64 [ %26, %20 ], [ %18, %17 ]
  %22 = phi i64 [ %27, %20 ], [ 0, %17 ]
  %23 = mul nuw nsw i64 %21, %6
  %24 = getelementptr inbounds i32, i32* %8, i64 %23
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  store i32 1, i32* %25, align 4, !tbaa !5
  store i32 0, i32* %24, align 4, !tbaa !5
  %26 = add nuw nsw i64 %21, 1
  %27 = add i64 %22, 1
  %28 = icmp eq i64 %27, %13
  br i1 %28, label %29, label %20, !llvm.loop !9

29:                                               ; preds = %17, %20, %2
  %30 = icmp slt i32 %1, 1
  br i1 %30, label %123, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds i32, i32* %8, i64 %6
  %33 = add nsw i64 %6, -1
  %34 = icmp ult i64 %33, 8
  br i1 %34, label %100, label %35

35:                                               ; preds = %31
  %36 = and i64 %33, -8
  %37 = or i64 %36, 1
  %38 = add nsw i64 %36, -8
  %39 = lshr exact i64 %38, 3
  %40 = add nuw nsw i64 %39, 1
  %41 = and i64 %40, 3
  %42 = icmp ult i64 %38, 24
  br i1 %42, label %80, label %43

43:                                               ; preds = %35
  %44 = and i64 %40, 4611686018427387900
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi i64 [ 0, %43 ], [ %76, %45 ]
  %47 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %43 ], [ %77, %45 ]
  %48 = phi i64 [ 0, %43 ], [ %78, %45 ]
  %49 = or i64 %46, 1
  %50 = add <4 x i32> %47, <i32 4, i32 4, i32 4, i32 4>
  %51 = getelementptr inbounds i32, i32* %32, i64 %49
  %52 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> %47, <4 x i32>* %52, align 4, !tbaa !5
  %53 = getelementptr inbounds i32, i32* %51, i64 4
  %54 = bitcast i32* %53 to <4 x i32>*
  store <4 x i32> %50, <4 x i32>* %54, align 4, !tbaa !5
  %55 = add <4 x i32> %47, <i32 8, i32 8, i32 8, i32 8>
  %56 = or i64 %46, 9
  %57 = add <4 x i32> %47, <i32 12, i32 12, i32 12, i32 12>
  %58 = getelementptr inbounds i32, i32* %32, i64 %56
  %59 = bitcast i32* %58 to <4 x i32>*
  store <4 x i32> %55, <4 x i32>* %59, align 4, !tbaa !5
  %60 = getelementptr inbounds i32, i32* %58, i64 4
  %61 = bitcast i32* %60 to <4 x i32>*
  store <4 x i32> %57, <4 x i32>* %61, align 4, !tbaa !5
  %62 = add <4 x i32> %47, <i32 16, i32 16, i32 16, i32 16>
  %63 = or i64 %46, 17
  %64 = add <4 x i32> %47, <i32 20, i32 20, i32 20, i32 20>
  %65 = getelementptr inbounds i32, i32* %32, i64 %63
  %66 = bitcast i32* %65 to <4 x i32>*
  store <4 x i32> %62, <4 x i32>* %66, align 4, !tbaa !5
  %67 = getelementptr inbounds i32, i32* %65, i64 4
  %68 = bitcast i32* %67 to <4 x i32>*
  store <4 x i32> %64, <4 x i32>* %68, align 4, !tbaa !5
  %69 = add <4 x i32> %47, <i32 24, i32 24, i32 24, i32 24>
  %70 = or i64 %46, 25
  %71 = add <4 x i32> %47, <i32 28, i32 28, i32 28, i32 28>
  %72 = getelementptr inbounds i32, i32* %32, i64 %70
  %73 = bitcast i32* %72 to <4 x i32>*
  store <4 x i32> %69, <4 x i32>* %73, align 4, !tbaa !5
  %74 = getelementptr inbounds i32, i32* %72, i64 4
  %75 = bitcast i32* %74 to <4 x i32>*
  store <4 x i32> %71, <4 x i32>* %75, align 4, !tbaa !5
  %76 = add nuw i64 %46, 32
  %77 = add <4 x i32> %47, <i32 32, i32 32, i32 32, i32 32>
  %78 = add i64 %48, 4
  %79 = icmp eq i64 %78, %44
  br i1 %79, label %80, label %45, !llvm.loop !11

80:                                               ; preds = %45, %35
  %81 = phi i64 [ 0, %35 ], [ %76, %45 ]
  %82 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %35 ], [ %77, %45 ]
  %83 = icmp eq i64 %41, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %80, %84
  %85 = phi i64 [ %94, %84 ], [ %81, %80 ]
  %86 = phi <4 x i32> [ %95, %84 ], [ %82, %80 ]
  %87 = phi i64 [ %96, %84 ], [ 0, %80 ]
  %88 = or i64 %85, 1
  %89 = add <4 x i32> %86, <i32 4, i32 4, i32 4, i32 4>
  %90 = getelementptr inbounds i32, i32* %32, i64 %88
  %91 = bitcast i32* %90 to <4 x i32>*
  store <4 x i32> %86, <4 x i32>* %91, align 4, !tbaa !5
  %92 = getelementptr inbounds i32, i32* %90, i64 4
  %93 = bitcast i32* %92 to <4 x i32>*
  store <4 x i32> %89, <4 x i32>* %93, align 4, !tbaa !5
  %94 = add nuw i64 %85, 8
  %95 = add <4 x i32> %86, <i32 8, i32 8, i32 8, i32 8>
  %96 = add i64 %87, 1
  %97 = icmp eq i64 %96, %41
  br i1 %97, label %98, label %84, !llvm.loop !14

98:                                               ; preds = %84, %80
  %99 = icmp eq i64 %33, %36
  br i1 %99, label %123, label %100

100:                                              ; preds = %31, %98
  %101 = phi i64 [ 1, %31 ], [ %37, %98 ]
  br label %127

102:                                              ; preds = %102, %15
  %103 = phi i64 [ 1, %15 ], [ %120, %102 ]
  %104 = phi i64 [ 0, %15 ], [ %121, %102 ]
  %105 = mul nuw nsw i64 %103, %6
  %106 = getelementptr inbounds i32, i32* %8, i64 %105
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 1, i32* %107, align 4, !tbaa !5
  store i32 0, i32* %106, align 4, !tbaa !5
  %108 = add nuw nsw i64 %103, 1
  %109 = mul nuw nsw i64 %108, %6
  %110 = getelementptr inbounds i32, i32* %8, i64 %109
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 1, i32* %111, align 4, !tbaa !5
  store i32 0, i32* %110, align 4, !tbaa !5
  %112 = add nuw nsw i64 %103, 2
  %113 = mul nuw nsw i64 %112, %6
  %114 = getelementptr inbounds i32, i32* %8, i64 %113
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 1, i32* %115, align 4, !tbaa !5
  store i32 0, i32* %114, align 4, !tbaa !5
  %116 = add nuw nsw i64 %103, 3
  %117 = mul nuw nsw i64 %116, %6
  %118 = getelementptr inbounds i32, i32* %8, i64 %117
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 1, i32* %119, align 4, !tbaa !5
  store i32 0, i32* %118, align 4, !tbaa !5
  %120 = add nuw nsw i64 %103, 4
  %121 = add i64 %104, 4
  %122 = icmp eq i64 %121, %16
  br i1 %122, label %17, label %102, !llvm.loop !15

123:                                              ; preds = %127, %98, %29
  %124 = icmp slt i32 %0, 2
  br i1 %124, label %201, label %125

125:                                              ; preds = %123
  %126 = icmp slt i32 %1, 2
  br label %133

127:                                              ; preds = %100, %127
  %128 = phi i64 [ %131, %127 ], [ %101, %100 ]
  %129 = getelementptr inbounds i32, i32* %32, i64 %128
  %130 = trunc i64 %128 to i32
  store i32 %130, i32* %129, align 4, !tbaa !5
  %131 = add nuw nsw i64 %128, 1
  %132 = icmp eq i64 %131, %6
  br i1 %132, label %123, label %127, !llvm.loop !16

133:                                              ; preds = %125, %198
  %134 = phi i64 [ 2, %125 ], [ %199, %198 ]
  br i1 %126, label %198, label %135

135:                                              ; preds = %133
  %136 = mul nuw nsw i64 %134, %6
  %137 = getelementptr inbounds i32, i32* %8, i64 %136
  %138 = add nsw i64 %134, -1
  %139 = mul nuw nsw i64 %138, %6
  %140 = getelementptr inbounds i32, i32* %8, i64 %139
  br label %141

141:                                              ; preds = %135, %194
  %142 = phi i64 [ 0, %135 ], [ %197, %194 ]
  %143 = phi i64 [ 2, %135 ], [ %195, %194 ]
  %144 = getelementptr inbounds i32, i32* %137, i64 %143
  store i32 2147483647, i32* %144, align 4, !tbaa !5
  %145 = and i64 %143, 1
  %146 = icmp eq i64 %142, -1
  br i1 %146, label %178, label %147

147:                                              ; preds = %141
  %148 = and i64 %143, 9223372036854775806
  br label %149

149:                                              ; preds = %149, %147
  %150 = phi i32 [ 2147483647, %147 ], [ %174, %149 ]
  %151 = phi i64 [ 1, %147 ], [ %175, %149 ]
  %152 = phi i64 [ 0, %147 ], [ %176, %149 ]
  %153 = add nsw i64 %151, -1
  %154 = getelementptr inbounds i32, i32* %140, i64 %153
  %155 = sub nsw i64 %143, %151
  %156 = getelementptr inbounds i32, i32* %137, i64 %155
  %157 = load i32, i32* %154, align 4
  %158 = load i32, i32* %156, align 4
  %159 = icmp slt i32 %157, %158
  %160 = select i1 %159, i32 %158, i32 %157
  %161 = add nsw i32 %160, 1
  %162 = icmp slt i32 %161, %150
  %163 = select i1 %162, i32 %161, i32 %150
  store i32 %163, i32* %144, align 4
  %164 = xor i64 %151, -1
  %165 = getelementptr inbounds i32, i32* %140, i64 %151
  %166 = add nsw i64 %143, %164
  %167 = getelementptr inbounds i32, i32* %137, i64 %166
  %168 = load i32, i32* %165, align 4
  %169 = load i32, i32* %167, align 4
  %170 = icmp slt i32 %168, %169
  %171 = select i1 %170, i32 %169, i32 %168
  %172 = add nsw i32 %171, 1
  %173 = icmp slt i32 %172, %163
  %174 = select i1 %173, i32 %172, i32 %163
  store i32 %174, i32* %144, align 4
  %175 = add nuw nsw i64 %151, 2
  %176 = add i64 %152, 2
  %177 = icmp eq i64 %176, %148
  br i1 %177, label %178, label %149, !llvm.loop !18

178:                                              ; preds = %149, %141
  %179 = phi i32 [ 2147483647, %141 ], [ %174, %149 ]
  %180 = phi i64 [ 1, %141 ], [ %175, %149 ]
  %181 = icmp eq i64 %145, 0
  br i1 %181, label %194, label %182

182:                                              ; preds = %178
  %183 = add nsw i64 %180, -1
  %184 = getelementptr inbounds i32, i32* %140, i64 %183
  %185 = sub nsw i64 %143, %180
  %186 = getelementptr inbounds i32, i32* %137, i64 %185
  %187 = load i32, i32* %184, align 4
  %188 = load i32, i32* %186, align 4
  %189 = icmp slt i32 %187, %188
  %190 = select i1 %189, i32 %188, i32 %187
  %191 = add nsw i32 %190, 1
  %192 = icmp slt i32 %191, %179
  %193 = select i1 %192, i32 %191, i32 %179
  store i32 %193, i32* %144, align 4
  br label %194

194:                                              ; preds = %178, %182
  %195 = add nuw nsw i64 %143, 1
  %196 = icmp eq i64 %195, %6
  %197 = add i64 %142, 1
  br i1 %196, label %198, label %141, !llvm.loop !19

198:                                              ; preds = %194, %133
  %199 = add nuw nsw i64 %134, 1
  %200 = icmp eq i64 %199, %4
  br i1 %200, label %201, label %133, !llvm.loop !20

201:                                              ; preds = %198, %123
  %202 = sext i32 %0 to i64
  %203 = mul nsw i64 %6, %202
  %204 = getelementptr inbounds i32, i32* %8, i64 %203
  %205 = sext i32 %1 to i64
  %206 = getelementptr inbounds i32, i32* %204, i64 %205
  %207 = load i32, i32* %206, align 4, !tbaa !5
  ret i32 %207
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_11_EGG_DROPPING_PUZZLE_1_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #5
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree norecurse nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!20 = distinct !{!20, !12}
