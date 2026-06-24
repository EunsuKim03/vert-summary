; ModuleID = 'benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp'
source_filename = "benchmark/cpp_transcoder/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE/DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp, i8* null }]

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
  %8 = tail call noalias noundef nonnull i8* @_Znam(i64 noundef %7) #8
  %9 = bitcast i8* %8 to i32*
  %10 = icmp sgt i32 %1, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = tail call noalias noundef nonnull i8* @_Znam(i64 noundef %7) #8
  %13 = bitcast i8* %12 to i32*
  br label %269

14:                                               ; preds = %2
  %15 = zext i32 %1 to i64
  %16 = icmp ult i32 %1, 8
  br i1 %16, label %86, label %17

17:                                               ; preds = %14
  %18 = and i64 %15, 4294967288
  %19 = add nsw i64 %18, -8
  %20 = lshr exact i64 %19, 3
  %21 = add nuw nsw i64 %20, 1
  %22 = and i64 %21, 7
  %23 = icmp ult i64 %19, 56
  br i1 %23, label %71, label %24

24:                                               ; preds = %17
  %25 = and i64 %21, 4611686018427387896
  br label %26

26:                                               ; preds = %26, %24
  %27 = phi i64 [ 0, %24 ], [ %68, %26 ]
  %28 = phi i64 [ 0, %24 ], [ %69, %26 ]
  %29 = getelementptr inbounds i32, i32* %9, i64 %27
  %30 = bitcast i32* %29 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %30, align 4, !tbaa !5
  %31 = getelementptr inbounds i32, i32* %29, i64 4
  %32 = bitcast i32* %31 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %32, align 4, !tbaa !5
  %33 = or i64 %27, 8
  %34 = getelementptr inbounds i32, i32* %9, i64 %33
  %35 = bitcast i32* %34 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %35, align 4, !tbaa !5
  %36 = getelementptr inbounds i32, i32* %34, i64 4
  %37 = bitcast i32* %36 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %37, align 4, !tbaa !5
  %38 = or i64 %27, 16
  %39 = getelementptr inbounds i32, i32* %9, i64 %38
  %40 = bitcast i32* %39 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %40, align 4, !tbaa !5
  %41 = getelementptr inbounds i32, i32* %39, i64 4
  %42 = bitcast i32* %41 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %42, align 4, !tbaa !5
  %43 = or i64 %27, 24
  %44 = getelementptr inbounds i32, i32* %9, i64 %43
  %45 = bitcast i32* %44 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %45, align 4, !tbaa !5
  %46 = getelementptr inbounds i32, i32* %44, i64 4
  %47 = bitcast i32* %46 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %47, align 4, !tbaa !5
  %48 = or i64 %27, 32
  %49 = getelementptr inbounds i32, i32* %9, i64 %48
  %50 = bitcast i32* %49 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %50, align 4, !tbaa !5
  %51 = getelementptr inbounds i32, i32* %49, i64 4
  %52 = bitcast i32* %51 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %52, align 4, !tbaa !5
  %53 = or i64 %27, 40
  %54 = getelementptr inbounds i32, i32* %9, i64 %53
  %55 = bitcast i32* %54 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %55, align 4, !tbaa !5
  %56 = getelementptr inbounds i32, i32* %54, i64 4
  %57 = bitcast i32* %56 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %57, align 4, !tbaa !5
  %58 = or i64 %27, 48
  %59 = getelementptr inbounds i32, i32* %9, i64 %58
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %60, align 4, !tbaa !5
  %61 = getelementptr inbounds i32, i32* %59, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %62, align 4, !tbaa !5
  %63 = or i64 %27, 56
  %64 = getelementptr inbounds i32, i32* %9, i64 %63
  %65 = bitcast i32* %64 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %65, align 4, !tbaa !5
  %66 = getelementptr inbounds i32, i32* %64, i64 4
  %67 = bitcast i32* %66 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %67, align 4, !tbaa !5
  %68 = add nuw i64 %27, 64
  %69 = add nuw i64 %28, 8
  %70 = icmp eq i64 %69, %25
  br i1 %70, label %71, label %26, !llvm.loop !9

71:                                               ; preds = %26, %17
  %72 = phi i64 [ 0, %17 ], [ %68, %26 ]
  %73 = icmp eq i64 %22, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %71, %74
  %75 = phi i64 [ %81, %74 ], [ %72, %71 ]
  %76 = phi i64 [ %82, %74 ], [ 0, %71 ]
  %77 = getelementptr inbounds i32, i32* %9, i64 %75
  %78 = bitcast i32* %77 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %78, align 4, !tbaa !5
  %79 = getelementptr inbounds i32, i32* %77, i64 4
  %80 = bitcast i32* %79 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %80, align 4, !tbaa !5
  %81 = add nuw i64 %75, 8
  %82 = add i64 %76, 1
  %83 = icmp eq i64 %82, %22
  br i1 %83, label %84, label %74, !llvm.loop !12

84:                                               ; preds = %74, %71
  %85 = icmp eq i64 %18, %15
  br i1 %85, label %88, label %86

86:                                               ; preds = %14, %84
  %87 = phi i64 [ 0, %14 ], [ %18, %84 ]
  br label %92

88:                                               ; preds = %92, %84
  %89 = icmp sgt i32 %1, 1
  br i1 %89, label %90, label %154

90:                                               ; preds = %88
  %91 = zext i32 %1 to i64
  br label %97

92:                                               ; preds = %86, %92
  %93 = phi i64 [ %95, %92 ], [ %87, %86 ]
  %94 = getelementptr inbounds i32, i32* %9, i64 %93
  store i32 1, i32* %94, align 4, !tbaa !5
  %95 = add nuw nsw i64 %93, 1
  %96 = icmp eq i64 %95, %15
  br i1 %96, label %88, label %92, !llvm.loop !14

97:                                               ; preds = %90, %150
  %98 = phi i64 [ 0, %90 ], [ %153, %150 ]
  %99 = phi i64 [ 1, %90 ], [ %151, %150 ]
  %100 = getelementptr inbounds i32, i32* %0, i64 %99
  %101 = load i32, i32* %100, align 4, !tbaa !5
  %102 = getelementptr inbounds i32, i32* %9, i64 %99
  %103 = and i64 %99, 1
  %104 = icmp eq i64 %98, 0
  br i1 %104, label %136, label %105

105:                                              ; preds = %97
  %106 = and i64 %99, 9223372036854775806
  br label %107

107:                                              ; preds = %132, %105
  %108 = phi i64 [ 0, %105 ], [ %133, %132 ]
  %109 = phi i64 [ 0, %105 ], [ %134, %132 ]
  %110 = getelementptr inbounds i32, i32* %0, i64 %108
  %111 = load i32, i32* %110, align 4, !tbaa !5
  %112 = icmp sgt i32 %101, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %107
  %114 = load i32, i32* %102, align 4, !tbaa !5
  %115 = getelementptr inbounds i32, i32* %9, i64 %108
  %116 = load i32, i32* %115, align 4, !tbaa !5
  %117 = icmp sgt i32 %114, %116
  br i1 %117, label %120, label %118

118:                                              ; preds = %113
  %119 = add nsw i32 %116, 1
  store i32 %119, i32* %102, align 4, !tbaa !5
  br label %120

120:                                              ; preds = %107, %113, %118
  %121 = or i64 %108, 1
  %122 = getelementptr inbounds i32, i32* %0, i64 %121
  %123 = load i32, i32* %122, align 4, !tbaa !5
  %124 = icmp sgt i32 %101, %123
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load i32, i32* %102, align 4, !tbaa !5
  %127 = getelementptr inbounds i32, i32* %9, i64 %121
  %128 = load i32, i32* %127, align 4, !tbaa !5
  %129 = icmp sgt i32 %126, %128
  br i1 %129, label %132, label %130

130:                                              ; preds = %125
  %131 = add nsw i32 %128, 1
  store i32 %131, i32* %102, align 4, !tbaa !5
  br label %132

132:                                              ; preds = %130, %125, %120
  %133 = add nuw nsw i64 %108, 2
  %134 = add i64 %109, 2
  %135 = icmp eq i64 %134, %106
  br i1 %135, label %136, label %107, !llvm.loop !16

136:                                              ; preds = %132, %97
  %137 = phi i64 [ 0, %97 ], [ %133, %132 ]
  %138 = icmp eq i64 %103, 0
  br i1 %138, label %150, label %139

139:                                              ; preds = %136
  %140 = getelementptr inbounds i32, i32* %0, i64 %137
  %141 = load i32, i32* %140, align 4, !tbaa !5
  %142 = icmp sgt i32 %101, %141
  br i1 %142, label %143, label %150

143:                                              ; preds = %139
  %144 = load i32, i32* %102, align 4, !tbaa !5
  %145 = getelementptr inbounds i32, i32* %9, i64 %137
  %146 = load i32, i32* %145, align 4, !tbaa !5
  %147 = icmp sgt i32 %144, %146
  br i1 %147, label %150, label %148

148:                                              ; preds = %143
  %149 = add nsw i32 %146, 1
  store i32 %149, i32* %102, align 4, !tbaa !5
  br label %150

150:                                              ; preds = %139, %143, %148, %136
  %151 = add nuw nsw i64 %99, 1
  %152 = icmp eq i64 %151, %91
  %153 = add i64 %98, 1
  br i1 %152, label %154, label %97, !llvm.loop !17

154:                                              ; preds = %150, %88
  %155 = phi i1 [ false, %88 ], [ %89, %150 ]
  %156 = tail call noalias noundef nonnull i8* @_Znam(i64 noundef %7) #8
  %157 = bitcast i8* %156 to i32*
  br i1 %10, label %158, label %237

158:                                              ; preds = %154
  %159 = zext i32 %1 to i64
  %160 = icmp ult i32 %1, 8
  br i1 %160, label %230, label %161

161:                                              ; preds = %158
  %162 = and i64 %15, 4294967288
  %163 = add nsw i64 %162, -8
  %164 = lshr exact i64 %163, 3
  %165 = add nuw nsw i64 %164, 1
  %166 = and i64 %165, 7
  %167 = icmp ult i64 %163, 56
  br i1 %167, label %215, label %168

168:                                              ; preds = %161
  %169 = and i64 %165, 4611686018427387896
  br label %170

170:                                              ; preds = %170, %168
  %171 = phi i64 [ 0, %168 ], [ %212, %170 ]
  %172 = phi i64 [ 0, %168 ], [ %213, %170 ]
  %173 = getelementptr inbounds i32, i32* %157, i64 %171
  %174 = bitcast i32* %173 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %174, align 4, !tbaa !5
  %175 = getelementptr inbounds i32, i32* %173, i64 4
  %176 = bitcast i32* %175 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %176, align 4, !tbaa !5
  %177 = or i64 %171, 8
  %178 = getelementptr inbounds i32, i32* %157, i64 %177
  %179 = bitcast i32* %178 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %179, align 4, !tbaa !5
  %180 = getelementptr inbounds i32, i32* %178, i64 4
  %181 = bitcast i32* %180 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %181, align 4, !tbaa !5
  %182 = or i64 %171, 16
  %183 = getelementptr inbounds i32, i32* %157, i64 %182
  %184 = bitcast i32* %183 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %184, align 4, !tbaa !5
  %185 = getelementptr inbounds i32, i32* %183, i64 4
  %186 = bitcast i32* %185 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %186, align 4, !tbaa !5
  %187 = or i64 %171, 24
  %188 = getelementptr inbounds i32, i32* %157, i64 %187
  %189 = bitcast i32* %188 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %189, align 4, !tbaa !5
  %190 = getelementptr inbounds i32, i32* %188, i64 4
  %191 = bitcast i32* %190 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %191, align 4, !tbaa !5
  %192 = or i64 %171, 32
  %193 = getelementptr inbounds i32, i32* %157, i64 %192
  %194 = bitcast i32* %193 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %194, align 4, !tbaa !5
  %195 = getelementptr inbounds i32, i32* %193, i64 4
  %196 = bitcast i32* %195 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %196, align 4, !tbaa !5
  %197 = or i64 %171, 40
  %198 = getelementptr inbounds i32, i32* %157, i64 %197
  %199 = bitcast i32* %198 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %199, align 4, !tbaa !5
  %200 = getelementptr inbounds i32, i32* %198, i64 4
  %201 = bitcast i32* %200 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %201, align 4, !tbaa !5
  %202 = or i64 %171, 48
  %203 = getelementptr inbounds i32, i32* %157, i64 %202
  %204 = bitcast i32* %203 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %204, align 4, !tbaa !5
  %205 = getelementptr inbounds i32, i32* %203, i64 4
  %206 = bitcast i32* %205 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %206, align 4, !tbaa !5
  %207 = or i64 %171, 56
  %208 = getelementptr inbounds i32, i32* %157, i64 %207
  %209 = bitcast i32* %208 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %209, align 4, !tbaa !5
  %210 = getelementptr inbounds i32, i32* %208, i64 4
  %211 = bitcast i32* %210 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %211, align 4, !tbaa !5
  %212 = add nuw i64 %171, 64
  %213 = add nuw i64 %172, 8
  %214 = icmp eq i64 %213, %169
  br i1 %214, label %215, label %170, !llvm.loop !18

215:                                              ; preds = %170, %161
  %216 = phi i64 [ 0, %161 ], [ %212, %170 ]
  %217 = icmp eq i64 %166, 0
  br i1 %217, label %228, label %218

218:                                              ; preds = %215, %218
  %219 = phi i64 [ %225, %218 ], [ %216, %215 ]
  %220 = phi i64 [ %226, %218 ], [ 0, %215 ]
  %221 = getelementptr inbounds i32, i32* %157, i64 %219
  %222 = bitcast i32* %221 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %222, align 4, !tbaa !5
  %223 = getelementptr inbounds i32, i32* %221, i64 4
  %224 = bitcast i32* %223 to <4 x i32>*
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32>* %224, align 4, !tbaa !5
  %225 = add nuw i64 %219, 8
  %226 = add i64 %220, 1
  %227 = icmp eq i64 %226, %166
  br i1 %227, label %228, label %218, !llvm.loop !19

228:                                              ; preds = %218, %215
  %229 = icmp eq i64 %162, %15
  br i1 %229, label %237, label %230

230:                                              ; preds = %158, %228
  %231 = phi i64 [ 0, %158 ], [ %162, %228 ]
  br label %232

232:                                              ; preds = %230, %232
  %233 = phi i64 [ %235, %232 ], [ %231, %230 ]
  %234 = getelementptr inbounds i32, i32* %157, i64 %233
  store i32 1, i32* %234, align 4, !tbaa !5
  %235 = add nuw nsw i64 %233, 1
  %236 = icmp eq i64 %235, %159
  br i1 %236, label %237, label %232, !llvm.loop !20

237:                                              ; preds = %232, %228, %154
  br i1 %155, label %238, label %269

238:                                              ; preds = %237
  %239 = add i32 %1, -2
  %240 = add nsw i32 %1, -1
  %241 = add nsw i64 %3, -1
  %242 = sext i32 %239 to i64
  %243 = sext i32 %240 to i64
  br label %244

244:                                              ; preds = %238, %266
  %245 = phi i64 [ %242, %238 ], [ %267, %266 ]
  %246 = icmp slt i64 %245, %243
  br i1 %246, label %247, label %266

247:                                              ; preds = %244
  %248 = getelementptr inbounds i32, i32* %0, i64 %245
  %249 = load i32, i32* %248, align 4, !tbaa !5
  %250 = getelementptr inbounds i32, i32* %157, i64 %245
  br label %251

251:                                              ; preds = %247, %263
  %252 = phi i64 [ %241, %247 ], [ %264, %263 ]
  %253 = getelementptr inbounds i32, i32* %0, i64 %252
  %254 = load i32, i32* %253, align 4, !tbaa !5
  %255 = icmp sgt i32 %249, %254
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load i32, i32* %250, align 4, !tbaa !5
  %258 = getelementptr inbounds i32, i32* %157, i64 %252
  %259 = load i32, i32* %258, align 4, !tbaa !5
  %260 = icmp sgt i32 %257, %259
  br i1 %260, label %263, label %261

261:                                              ; preds = %256
  %262 = add nsw i32 %259, 1
  store i32 %262, i32* %250, align 4, !tbaa !5
  br label %263

263:                                              ; preds = %251, %256, %261
  %264 = add nsw i64 %252, -1
  %265 = icmp sgt i64 %264, %245
  br i1 %265, label %251, label %266, !llvm.loop !21

266:                                              ; preds = %263, %244
  %267 = add nsw i64 %245, -1
  %268 = icmp sgt i64 %245, 0
  br i1 %268, label %244, label %275, !llvm.loop !22

269:                                              ; preds = %237, %11
  %270 = phi i32* [ %157, %237 ], [ %13, %11 ]
  %271 = load i32, i32* %9, align 4, !tbaa !5
  %272 = load i32, i32* %270, align 4, !tbaa !5
  %273 = add i32 %271, -1
  %274 = add i32 %273, %272
  br label %336

275:                                              ; preds = %266
  %276 = load i32, i32* %9, align 4, !tbaa !5
  %277 = load i32, i32* %157, align 4, !tbaa !5
  %278 = add i32 %276, -1
  %279 = add i32 %278, %277
  %280 = zext i32 %1 to i64
  %281 = add nsw i64 %15, -1
  %282 = icmp ult i64 %281, 8
  br i1 %282, label %320, label %283

283:                                              ; preds = %275
  %284 = and i64 %281, -8
  %285 = or i64 %284, 1
  %286 = insertelement <4 x i32> poison, i32 %279, i64 0
  %287 = shufflevector <4 x i32> %286, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %288

288:                                              ; preds = %288, %283
  %289 = phi i64 [ 0, %283 ], [ %313, %288 ]
  %290 = phi <4 x i32> [ %287, %283 ], [ %311, %288 ]
  %291 = phi <4 x i32> [ %287, %283 ], [ %312, %288 ]
  %292 = or i64 %289, 1
  %293 = getelementptr inbounds i32, i32* %9, i64 %292
  %294 = bitcast i32* %293 to <4 x i32>*
  %295 = load <4 x i32>, <4 x i32>* %294, align 4, !tbaa !5
  %296 = getelementptr inbounds i32, i32* %293, i64 4
  %297 = bitcast i32* %296 to <4 x i32>*
  %298 = load <4 x i32>, <4 x i32>* %297, align 4, !tbaa !5
  %299 = getelementptr inbounds i32, i32* %157, i64 %292
  %300 = bitcast i32* %299 to <4 x i32>*
  %301 = load <4 x i32>, <4 x i32>* %300, align 4, !tbaa !5
  %302 = getelementptr inbounds i32, i32* %299, i64 4
  %303 = bitcast i32* %302 to <4 x i32>*
  %304 = load <4 x i32>, <4 x i32>* %303, align 4, !tbaa !5
  %305 = add <4 x i32> %295, <i32 -1, i32 -1, i32 -1, i32 -1>
  %306 = add <4 x i32> %298, <i32 -1, i32 -1, i32 -1, i32 -1>
  %307 = add <4 x i32> %305, %301
  %308 = add <4 x i32> %306, %304
  %309 = icmp sgt <4 x i32> %307, %290
  %310 = icmp sgt <4 x i32> %308, %291
  %311 = select <4 x i1> %309, <4 x i32> %307, <4 x i32> %290
  %312 = select <4 x i1> %310, <4 x i32> %308, <4 x i32> %291
  %313 = add nuw i64 %289, 8
  %314 = icmp eq i64 %313, %284
  br i1 %314, label %315, label %288, !llvm.loop !23

315:                                              ; preds = %288
  %316 = icmp sgt <4 x i32> %311, %312
  %317 = select <4 x i1> %316, <4 x i32> %311, <4 x i32> %312
  %318 = call i32 @llvm.vector.reduce.smax.v4i32(<4 x i32> %317)
  %319 = icmp eq i64 %281, %284
  br i1 %319, label %336, label %320

320:                                              ; preds = %275, %315
  %321 = phi i64 [ 1, %275 ], [ %285, %315 ]
  %322 = phi i32 [ %279, %275 ], [ %318, %315 ]
  br label %323

323:                                              ; preds = %320, %323
  %324 = phi i64 [ %334, %323 ], [ %321, %320 ]
  %325 = phi i32 [ %333, %323 ], [ %322, %320 ]
  %326 = getelementptr inbounds i32, i32* %9, i64 %324
  %327 = load i32, i32* %326, align 4, !tbaa !5
  %328 = getelementptr inbounds i32, i32* %157, i64 %324
  %329 = load i32, i32* %328, align 4, !tbaa !5
  %330 = add i32 %327, -1
  %331 = add i32 %330, %329
  %332 = icmp sgt i32 %331, %325
  %333 = select i1 %332, i32 %331, i32 %325
  %334 = add nuw nsw i64 %324, 1
  %335 = icmp eq i64 %334, %280
  br i1 %335, label %336, label %323, !llvm.loop !24

336:                                              ; preds = %323, %315, %269
  %337 = phi i32 [ %274, %269 ], [ %318, %315 ], [ %333, %323 ]
  ret i32 %337
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znam(i64 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_DYNAMIC_PROGRAMMING_SET_15_LONGEST_BITONIC_SUBSEQUENCE_processed.cpp() #6 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #7

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind readnone willreturn }
attributes #8 = { builtin allocsize(0) }
attributes #9 = { nounwind }

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
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.unroll.disable"}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10, !11}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !10, !15, !11}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10, !11}
!24 = distinct !{!24, !10, !15, !11}
