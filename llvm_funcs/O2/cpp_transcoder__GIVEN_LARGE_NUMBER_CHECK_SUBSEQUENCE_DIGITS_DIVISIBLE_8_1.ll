; ModuleID = 'llvm/cpp_transcoder/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1/GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind readonly uwtable willreturn
define dso_local noundef i32 @_Z6f_goldNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.std::__cxx11::basic_string"* nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 1
  %3 = load i64, i64* %2, align 8, !tbaa !5
  %4 = trunc i64 %3 to i32
  %5 = add i64 %3, 1
  %6 = and i64 %5, 4294967295
  %7 = alloca [10 x i32], i64 %6, align 16
  %8 = bitcast [10 x i32]* %7 to i8*
  %9 = mul nuw nsw i64 %6, 40
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 %8, i8 0, i64 %9, i1 false)
  %10 = alloca i32, i64 %6, align 16
  %11 = icmp slt i32 %4, 1
  br i1 %11, label %237, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %0, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8, !tbaa !12
  %15 = add i64 %3, 1
  %16 = and i64 %15, 4294967295
  %17 = add nsw i64 %16, -1
  %18 = icmp ult i64 %17, 8
  br i1 %18, label %87, label %19

19:                                               ; preds = %12
  %20 = and i64 %17, -8
  %21 = or i64 %20, 1
  %22 = add nsw i64 %20, -8
  %23 = lshr exact i64 %22, 3
  %24 = add nuw nsw i64 %23, 1
  %25 = and i64 %24, 1
  %26 = icmp eq i64 %22, 0
  br i1 %26, label %66, label %27

27:                                               ; preds = %19
  %28 = and i64 %24, 4611686018427387902
  br label %29

29:                                               ; preds = %29, %27
  %30 = phi i64 [ 0, %27 ], [ %63, %29 ]
  %31 = phi i64 [ 0, %27 ], [ %64, %29 ]
  %32 = or i64 %30, 1
  %33 = getelementptr inbounds i8, i8* %14, i64 %30
  %34 = bitcast i8* %33 to <4 x i8>*
  %35 = load <4 x i8>, <4 x i8>* %34, align 1, !tbaa !13
  %36 = getelementptr inbounds i8, i8* %33, i64 4
  %37 = bitcast i8* %36 to <4 x i8>*
  %38 = load <4 x i8>, <4 x i8>* %37, align 1, !tbaa !13
  %39 = sext <4 x i8> %35 to <4 x i32>
  %40 = sext <4 x i8> %38 to <4 x i32>
  %41 = add nsw <4 x i32> %39, <i32 -48, i32 -48, i32 -48, i32 -48>
  %42 = add nsw <4 x i32> %40, <i32 -48, i32 -48, i32 -48, i32 -48>
  %43 = getelementptr inbounds i32, i32* %10, i64 %32
  %44 = bitcast i32* %43 to <4 x i32>*
  store <4 x i32> %41, <4 x i32>* %44, align 4, !tbaa !14
  %45 = getelementptr inbounds i32, i32* %43, i64 4
  %46 = bitcast i32* %45 to <4 x i32>*
  store <4 x i32> %42, <4 x i32>* %46, align 4, !tbaa !14
  %47 = or i64 %30, 8
  %48 = or i64 %30, 9
  %49 = getelementptr inbounds i8, i8* %14, i64 %47
  %50 = bitcast i8* %49 to <4 x i8>*
  %51 = load <4 x i8>, <4 x i8>* %50, align 1, !tbaa !13
  %52 = getelementptr inbounds i8, i8* %49, i64 4
  %53 = bitcast i8* %52 to <4 x i8>*
  %54 = load <4 x i8>, <4 x i8>* %53, align 1, !tbaa !13
  %55 = sext <4 x i8> %51 to <4 x i32>
  %56 = sext <4 x i8> %54 to <4 x i32>
  %57 = add nsw <4 x i32> %55, <i32 -48, i32 -48, i32 -48, i32 -48>
  %58 = add nsw <4 x i32> %56, <i32 -48, i32 -48, i32 -48, i32 -48>
  %59 = getelementptr inbounds i32, i32* %10, i64 %48
  %60 = bitcast i32* %59 to <4 x i32>*
  store <4 x i32> %57, <4 x i32>* %60, align 4, !tbaa !14
  %61 = getelementptr inbounds i32, i32* %59, i64 4
  %62 = bitcast i32* %61 to <4 x i32>*
  store <4 x i32> %58, <4 x i32>* %62, align 4, !tbaa !14
  %63 = add nuw i64 %30, 16
  %64 = add i64 %31, 2
  %65 = icmp eq i64 %64, %28
  br i1 %65, label %66, label %29, !llvm.loop !16

66:                                               ; preds = %29, %19
  %67 = phi i64 [ 0, %19 ], [ %63, %29 ]
  %68 = icmp eq i64 %25, 0
  br i1 %68, label %85, label %69

69:                                               ; preds = %66
  %70 = or i64 %67, 1
  %71 = getelementptr inbounds i8, i8* %14, i64 %67
  %72 = bitcast i8* %71 to <4 x i8>*
  %73 = load <4 x i8>, <4 x i8>* %72, align 1, !tbaa !13
  %74 = getelementptr inbounds i8, i8* %71, i64 4
  %75 = bitcast i8* %74 to <4 x i8>*
  %76 = load <4 x i8>, <4 x i8>* %75, align 1, !tbaa !13
  %77 = sext <4 x i8> %73 to <4 x i32>
  %78 = sext <4 x i8> %76 to <4 x i32>
  %79 = add nsw <4 x i32> %77, <i32 -48, i32 -48, i32 -48, i32 -48>
  %80 = add nsw <4 x i32> %78, <i32 -48, i32 -48, i32 -48, i32 -48>
  %81 = getelementptr inbounds i32, i32* %10, i64 %70
  %82 = bitcast i32* %81 to <4 x i32>*
  store <4 x i32> %79, <4 x i32>* %82, align 4, !tbaa !14
  %83 = getelementptr inbounds i32, i32* %81, i64 4
  %84 = bitcast i32* %83 to <4 x i32>*
  store <4 x i32> %80, <4 x i32>* %84, align 4, !tbaa !14
  br label %85

85:                                               ; preds = %66, %69
  %86 = icmp eq i64 %17, %20
  br i1 %86, label %89, label %87

87:                                               ; preds = %12, %85
  %88 = phi i64 [ 1, %12 ], [ %21, %85 ]
  br label %93

89:                                               ; preds = %93, %85
  br i1 %11, label %237, label %90

90:                                               ; preds = %89
  %91 = add i64 %3, 1
  %92 = and i64 %91, 4294967295
  br label %112

93:                                               ; preds = %87, %93
  %94 = phi i64 [ %101, %93 ], [ %88, %87 ]
  %95 = add nsw i64 %94, -1
  %96 = getelementptr inbounds i8, i8* %14, i64 %95
  %97 = load i8, i8* %96, align 1, !tbaa !13
  %98 = sext i8 %97 to i32
  %99 = add nsw i32 %98, -48
  %100 = getelementptr inbounds i32, i32* %10, i64 %94
  store i32 %99, i32* %100, align 4, !tbaa !14
  %101 = add nuw nsw i64 %94, 1
  %102 = icmp eq i64 %101, %16
  br i1 %102, label %89, label %93, !llvm.loop !19

103:                                              ; preds = %112
  br i1 %11, label %237, label %104

104:                                              ; preds = %103
  %105 = shl i64 %3, 32
  %106 = ashr exact i64 %105, 32
  %107 = add i64 %3, 1
  %108 = and i64 %107, 4294967295
  %109 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 1, i64 0
  %110 = load i32, i32* %109, align 8, !tbaa !14
  %111 = icmp eq i32 %110, 1
  br i1 %111, label %237, label %226

112:                                              ; preds = %90, %112
  %113 = phi i64 [ 1, %90 ], [ %224, %112 ]
  %114 = getelementptr inbounds i32, i32* %10, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !14
  %116 = srem i32 %115, 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 %117
  %119 = add nsw i64 %113, -1
  %120 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %119, i64 0
  %121 = load i32, i32* %120, align 8, !tbaa !14
  %122 = icmp sgt i32 %121, 1
  %123 = select i1 %122, i32 %121, i32 1
  store i32 %123, i32* %118, align 4
  %124 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 0
  %125 = load i32, i32* %124, align 8, !tbaa !14
  %126 = icmp sgt i32 %121, %125
  %127 = select i1 %126, i32 %121, i32 %125
  store i32 %127, i32* %124, align 8
  %128 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %119, i64 1
  %129 = load i32, i32* %128, align 4, !tbaa !14
  %130 = add i32 %115, 10
  %131 = srem i32 %130, 8
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 %132
  %134 = load i32, i32* %133, align 4, !tbaa !14
  %135 = icmp sgt i32 %129, %134
  %136 = select i1 %135, i32 %129, i32 %134
  store i32 %136, i32* %133, align 4
  %137 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 1
  %138 = load i32, i32* %137, align 4, !tbaa !14
  %139 = icmp sgt i32 %129, %138
  %140 = select i1 %139, i32 %129, i32 %138
  store i32 %140, i32* %137, align 4
  %141 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %119, i64 2
  %142 = load i32, i32* %141, align 8, !tbaa !14
  %143 = add i32 %115, 20
  %144 = srem i32 %143, 8
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 %145
  %147 = load i32, i32* %146, align 4, !tbaa !14
  %148 = icmp sgt i32 %142, %147
  %149 = select i1 %148, i32 %142, i32 %147
  store i32 %149, i32* %146, align 4
  %150 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 2
  %151 = load i32, i32* %150, align 8, !tbaa !14
  %152 = icmp sgt i32 %142, %151
  %153 = select i1 %152, i32 %142, i32 %151
  store i32 %153, i32* %150, align 8
  %154 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %119, i64 3
  %155 = load i32, i32* %154, align 4, !tbaa !14
  %156 = add i32 %115, 30
  %157 = srem i32 %156, 8
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 %158
  %160 = load i32, i32* %159, align 4, !tbaa !14
  %161 = icmp sgt i32 %155, %160
  %162 = select i1 %161, i32 %155, i32 %160
  store i32 %162, i32* %159, align 4
  %163 = load i32, i32* %154, align 4, !tbaa !14
  %164 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 3
  %165 = load i32, i32* %164, align 4, !tbaa !14
  %166 = icmp sgt i32 %163, %165
  %167 = select i1 %166, i32 %163, i32 %165
  store i32 %167, i32* %164, align 4
  %168 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %119, i64 4
  %169 = load i32, i32* %168, align 8, !tbaa !14
  %170 = add i32 %115, 40
  %171 = srem i32 %170, 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 %172
  %174 = load i32, i32* %173, align 4, !tbaa !14
  %175 = icmp sgt i32 %169, %174
  %176 = select i1 %175, i32 %169, i32 %174
  store i32 %176, i32* %173, align 4
  %177 = load i32, i32* %168, align 8, !tbaa !14
  %178 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 4
  %179 = load i32, i32* %178, align 8, !tbaa !14
  %180 = icmp sgt i32 %177, %179
  %181 = select i1 %180, i32 %177, i32 %179
  store i32 %181, i32* %178, align 8
  %182 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %119, i64 5
  %183 = load i32, i32* %182, align 4, !tbaa !14
  %184 = add i32 %115, 50
  %185 = srem i32 %184, 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 %186
  %188 = load i32, i32* %187, align 4, !tbaa !14
  %189 = icmp sgt i32 %183, %188
  %190 = select i1 %189, i32 %183, i32 %188
  store i32 %190, i32* %187, align 4
  %191 = load i32, i32* %182, align 4, !tbaa !14
  %192 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 5
  %193 = load i32, i32* %192, align 4, !tbaa !14
  %194 = icmp sgt i32 %191, %193
  %195 = select i1 %194, i32 %191, i32 %193
  store i32 %195, i32* %192, align 4
  %196 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %119, i64 6
  %197 = load i32, i32* %196, align 8, !tbaa !14
  %198 = add i32 %115, 60
  %199 = srem i32 %198, 8
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 %200
  %202 = load i32, i32* %201, align 4, !tbaa !14
  %203 = icmp sgt i32 %197, %202
  %204 = select i1 %203, i32 %197, i32 %202
  store i32 %204, i32* %201, align 4
  %205 = load i32, i32* %196, align 8, !tbaa !14
  %206 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 6
  %207 = load i32, i32* %206, align 8, !tbaa !14
  %208 = icmp sgt i32 %205, %207
  %209 = select i1 %208, i32 %205, i32 %207
  store i32 %209, i32* %206, align 8
  %210 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %119, i64 7
  %211 = load i32, i32* %210, align 4, !tbaa !14
  %212 = add i32 %115, 70
  %213 = srem i32 %212, 8
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 %214
  %216 = load i32, i32* %215, align 4, !tbaa !14
  %217 = icmp sgt i32 %211, %216
  %218 = select i1 %217, i32 %211, i32 %216
  store i32 %218, i32* %215, align 4
  %219 = load i32, i32* %210, align 4, !tbaa !14
  %220 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %113, i64 7
  %221 = load i32, i32* %220, align 4, !tbaa !14
  %222 = icmp sgt i32 %219, %221
  %223 = select i1 %222, i32 %219, i32 %221
  store i32 %223, i32* %220, align 4
  %224 = add nuw nsw i64 %113, 1
  %225 = icmp eq i64 %224, %92
  br i1 %225, label %103, label %112, !llvm.loop !21

226:                                              ; preds = %104, %230
  %227 = phi i64 [ %228, %230 ], [ 1, %104 ]
  %228 = add nuw nsw i64 %227, 1
  %229 = icmp eq i64 %228, %108
  br i1 %229, label %234, label %230, !llvm.loop !22

230:                                              ; preds = %226
  %231 = getelementptr inbounds [10 x i32], [10 x i32]* %7, i64 %228, i64 0
  %232 = load i32, i32* %231, align 8, !tbaa !14
  %233 = icmp eq i32 %232, 1
  br i1 %233, label %234, label %226, !llvm.loop !22

234:                                              ; preds = %226, %230
  %235 = icmp slt i64 %227, %106
  %236 = zext i1 %235 to i32
  br label %237

237:                                              ; preds = %234, %104, %1, %89, %103
  %238 = phi i32 [ 0, %103 ], [ 0, %89 ], [ 0, %1 ], [ 1, %104 ], [ %236, %234 ]
  ret i32 %238
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_GIVEN_LARGE_NUMBER_CHECK_SUBSEQUENCE_DIGITS_DIVISIBLE_8_1_reprocessed.cpp() #5 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress nofree nosync nounwind readonly uwtable willreturn "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #5 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{!6, !11, i64 8}
!6 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !7, i64 0, !11, i64 8, !9, i64 16}
!7 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!6, !8, i64 0}
!13 = !{!9, !9, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"int", !9, i64 0}
!16 = distinct !{!16, !17, !18}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!"llvm.loop.isvectorized", i32 1}
!19 = distinct !{!19, !17, !20, !18}
!20 = !{!"llvm.loop.unroll.runtime.disable"}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !17}
