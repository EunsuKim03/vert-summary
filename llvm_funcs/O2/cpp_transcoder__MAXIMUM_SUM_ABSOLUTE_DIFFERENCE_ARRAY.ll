; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY/MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY/MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = icmp ne i32 %1, 0
  call void @llvm.assume(i1 %5)
  %6 = tail call i64 @llvm.ctlz.i64(i64 %3, i1 true) #13, !range !5
  %7 = shl nuw nsw i64 %6, 1
  %8 = xor i64 %7, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef %0, i32* noundef nonnull %4, i64 noundef %8)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* noundef %0, i32* noundef nonnull %4)
  %9 = icmp sgt i32 %1, 1
  call void @llvm.assume(i1 %9)
  %10 = lshr i32 %1, 1
  %11 = zext i32 %10 to i64
  br label %54

12:                                               ; preds = %150
  %13 = add nsw i32 %1, -1
  br i1 %9, label %16, label %14

14:                                               ; preds = %12
  %15 = load i32, i32* %151, align 4, !tbaa !6
  br label %156

16:                                               ; preds = %12
  %17 = zext i32 %13 to i64
  %18 = load i32, i32* %151, align 4, !tbaa !6
  %19 = icmp ult i32 %13, 8
  br i1 %19, label %50, label %20

20:                                               ; preds = %16
  %21 = and i64 %17, 4294967288
  %22 = insertelement <4 x i32> poison, i32 %18, i64 3
  br label %23

23:                                               ; preds = %23, %20
  %24 = phi i64 [ 0, %20 ], [ %43, %23 ]
  %25 = phi <4 x i32> [ %22, %20 ], [ %34, %23 ]
  %26 = phi <4 x i32> [ zeroinitializer, %20 ], [ %41, %23 ]
  %27 = phi <4 x i32> [ zeroinitializer, %20 ], [ %42, %23 ]
  %28 = or i64 %24, 1
  %29 = getelementptr inbounds i32, i32* %151, i64 %28
  %30 = bitcast i32* %29 to <4 x i32>*
  %31 = load <4 x i32>, <4 x i32>* %30, align 4, !tbaa !6
  %32 = getelementptr inbounds i32, i32* %29, i64 4
  %33 = bitcast i32* %32 to <4 x i32>*
  %34 = load <4 x i32>, <4 x i32>* %33, align 4, !tbaa !6
  %35 = shufflevector <4 x i32> %25, <4 x i32> %31, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %36 = shufflevector <4 x i32> %31, <4 x i32> %34, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %37 = sub nsw <4 x i32> %35, %31
  %38 = sub nsw <4 x i32> %36, %34
  %39 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %37, i1 true)
  %40 = call <4 x i32> @llvm.abs.v4i32(<4 x i32> %38, i1 true)
  %41 = add <4 x i32> %39, %26
  %42 = add <4 x i32> %40, %27
  %43 = add nuw i64 %24, 8
  %44 = icmp eq i64 %43, %21
  br i1 %44, label %45, label %23, !llvm.loop !10

45:                                               ; preds = %23
  %46 = add <4 x i32> %42, %41
  %47 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %46)
  %48 = icmp eq i64 %21, %17
  %49 = extractelement <4 x i32> %34, i64 3
  br i1 %48, label %156, label %50

50:                                               ; preds = %16, %45
  %51 = phi i32 [ %49, %45 ], [ %18, %16 ]
  %52 = phi i64 [ %21, %45 ], [ 0, %16 ]
  %53 = phi i32 [ %47, %45 ], [ 0, %16 ]
  br label %166

54:                                               ; preds = %2, %150
  %55 = phi i64 [ 0, %2 ], [ %154, %150 ]
  %56 = phi i32* [ null, %2 ], [ %153, %150 ]
  %57 = phi i32* [ null, %2 ], [ %152, %150 ]
  %58 = phi i32* [ null, %2 ], [ %151, %150 ]
  %59 = getelementptr inbounds i32, i32* %0, i64 %55
  %60 = icmp eq i32* %57, %56
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %59, align 4, !tbaa !6
  store i32 %62, i32* %57, align 4, !tbaa !6
  br label %99

63:                                               ; preds = %54
  %64 = ptrtoint i32* %56 to i64
  %65 = ptrtoint i32* %58 to i64
  %66 = sub i64 %64, %65
  %67 = ashr exact i64 %66, 2
  %68 = icmp eq i64 %66, 9223372036854775804
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #14
          to label %70 unwind label %180

70:                                               ; preds = %69
  unreachable

71:                                               ; preds = %63
  %72 = icmp eq i64 %66, 0
  %73 = select i1 %72, i64 1, i64 %67
  %74 = add nsw i64 %73, %67
  %75 = icmp ult i64 %74, %67
  %76 = icmp ugt i64 %74, 2305843009213693951
  %77 = or i1 %75, %76
  %78 = select i1 %77, i64 2305843009213693951, i64 %74
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %85, label %80

80:                                               ; preds = %71
  %81 = shl nuw nsw i64 %78, 2
  %82 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %81) #15
          to label %83 unwind label %177

83:                                               ; preds = %80
  %84 = bitcast i8* %82 to i32*
  br label %85

85:                                               ; preds = %83, %71
  %86 = phi i32* [ %84, %83 ], [ null, %71 ]
  %87 = getelementptr inbounds i32, i32* %86, i64 %67
  %88 = load i32, i32* %59, align 4, !tbaa !6
  store i32 %88, i32* %87, align 4, !tbaa !6
  %89 = icmp sgt i64 %66, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = bitcast i32* %86 to i8*
  %92 = bitcast i32* %58 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %91, i8* align 4 %92, i64 %66, i1 false) #13
  br label %93

93:                                               ; preds = %85, %90
  %94 = icmp eq i32* %58, null
  br i1 %94, label %97, label %95

95:                                               ; preds = %93
  %96 = bitcast i32* %58 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %96) #13
  br label %97

97:                                               ; preds = %95, %93
  %98 = getelementptr inbounds i32, i32* %86, i64 %78
  br label %99

99:                                               ; preds = %97, %61
  %100 = phi i32* [ %86, %97 ], [ %58, %61 ]
  %101 = phi i32* [ %87, %97 ], [ %57, %61 ]
  %102 = phi i32* [ %98, %97 ], [ %56, %61 ]
  %103 = getelementptr inbounds i32, i32* %101, i64 1
  %104 = trunc i64 %55 to i32
  %105 = xor i32 %104, -1
  %106 = add i32 %105, %1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %0, i64 %107
  %109 = icmp eq i32* %103, %102
  br i1 %109, label %113, label %110

110:                                              ; preds = %99
  %111 = load i32, i32* %108, align 4, !tbaa !6
  store i32 %111, i32* %103, align 4, !tbaa !6
  %112 = getelementptr inbounds i32, i32* %101, i64 2
  br label %150

113:                                              ; preds = %99
  %114 = ptrtoint i32* %102 to i64
  %115 = ptrtoint i32* %100 to i64
  %116 = sub i64 %114, %115
  %117 = ashr exact i64 %116, 2
  %118 = icmp eq i64 %116, 9223372036854775804
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  invoke void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #14
          to label %120 unwind label %180

120:                                              ; preds = %119
  unreachable

121:                                              ; preds = %113
  %122 = icmp eq i64 %116, 0
  %123 = select i1 %122, i64 1, i64 %117
  %124 = add nsw i64 %123, %117
  %125 = icmp ult i64 %124, %117
  %126 = icmp ugt i64 %124, 2305843009213693951
  %127 = or i1 %125, %126
  %128 = select i1 %127, i64 2305843009213693951, i64 %124
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %121
  %131 = shl nuw nsw i64 %128, 2
  %132 = invoke noalias noundef nonnull i8* @_Znwm(i64 noundef %131) #15
          to label %133 unwind label %177

133:                                              ; preds = %130
  %134 = bitcast i8* %132 to i32*
  br label %135

135:                                              ; preds = %133, %121
  %136 = phi i32* [ %134, %133 ], [ null, %121 ]
  %137 = getelementptr inbounds i32, i32* %136, i64 %117
  %138 = load i32, i32* %108, align 4, !tbaa !6
  store i32 %138, i32* %137, align 4, !tbaa !6
  %139 = icmp sgt i64 %116, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %135
  %141 = bitcast i32* %136 to i8*
  %142 = bitcast i32* %100 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %141, i8* align 4 %142, i64 %116, i1 false) #13
  br label %143

143:                                              ; preds = %135, %140
  %144 = getelementptr inbounds i32, i32* %137, i64 1
  %145 = icmp eq i32* %100, null
  br i1 %145, label %148, label %146

146:                                              ; preds = %143
  %147 = bitcast i32* %100 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %147) #13
  br label %148

148:                                              ; preds = %146, %143
  %149 = getelementptr inbounds i32, i32* %136, i64 %128
  br label %150

150:                                              ; preds = %148, %110
  %151 = phi i32* [ %136, %148 ], [ %100, %110 ]
  %152 = phi i32* [ %144, %148 ], [ %112, %110 ]
  %153 = phi i32* [ %149, %148 ], [ %102, %110 ]
  %154 = add nuw nsw i64 %55, 1
  %155 = icmp eq i64 %154, %11
  br i1 %155, label %12, label %54, !llvm.loop !13

156:                                              ; preds = %166, %45, %14
  %157 = phi i32 [ %15, %14 ], [ %18, %45 ], [ %18, %166 ]
  %158 = phi i32 [ 0, %14 ], [ %47, %45 ], [ %175, %166 ]
  %159 = sext i32 %13 to i64
  %160 = getelementptr inbounds i32, i32* %151, i64 %159
  %161 = load i32, i32* %160, align 4, !tbaa !6
  %162 = sub nsw i32 %161, %157
  %163 = tail call i32 @llvm.abs.i32(i32 %162, i1 true)
  %164 = add nuw nsw i32 %163, %158
  %165 = bitcast i32* %151 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %165) #13
  ret i32 %164

166:                                              ; preds = %50, %166
  %167 = phi i32 [ %172, %166 ], [ %51, %50 ]
  %168 = phi i64 [ %170, %166 ], [ %52, %50 ]
  %169 = phi i32 [ %175, %166 ], [ %53, %50 ]
  %170 = add nuw nsw i64 %168, 1
  %171 = getelementptr inbounds i32, i32* %151, i64 %170
  %172 = load i32, i32* %171, align 4, !tbaa !6
  %173 = sub nsw i32 %167, %172
  %174 = tail call i32 @llvm.abs.i32(i32 %173, i1 true)
  %175 = add nuw nsw i32 %174, %169
  %176 = icmp eq i64 %170, %17
  br i1 %176, label %156, label %166, !llvm.loop !14

177:                                              ; preds = %130, %80
  %178 = phi i32* [ %58, %80 ], [ %100, %130 ]
  %179 = landingpad { i8*, i32 }
          cleanup
  br label %183

180:                                              ; preds = %119, %69
  %181 = phi i32* [ %100, %119 ], [ %58, %69 ]
  %182 = landingpad { i8*, i32 }
          cleanup
  br label %183

183:                                              ; preds = %180, %177
  %184 = phi i32* [ %178, %177 ], [ %181, %180 ]
  %185 = phi { i8*, i32 } [ %179, %177 ], [ %182, %180 ]
  %186 = icmp eq i32* %184, null
  br i1 %186, label %189, label %187

187:                                              ; preds = %183
  %188 = bitcast i32* %184 to i8*
  tail call void @_ZdlPv(i8* noundef nonnull %188) #13
  br label %189

189:                                              ; preds = %183, %187
  resume { i8*, i32 } %185
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef %0, i32* noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat {
  %4 = ptrtoint i32* %0 to i64
  %5 = ptrtoint i32* %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 64
  br i1 %7, label %8, label %178

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  br label %10

10:                                               ; preds = %8, %174
  %11 = phi i64 [ %6, %8 ], [ %176, %174 ]
  %12 = phi i32* [ %1, %8 ], [ %162, %174 ]
  %13 = phi i64 [ %2, %8 ], [ %130, %174 ]
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %129

15:                                               ; preds = %10
  %16 = lshr exact i64 %11, 2
  %17 = add nsw i64 %16, -2
  %18 = lshr i64 %17, 1
  %19 = add nsw i64 %16, -1
  %20 = lshr i64 %19, 1
  %21 = and i64 %11, 4
  %22 = icmp eq i64 %21, 0
  %23 = or i64 %17, 1
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = getelementptr inbounds i32, i32* %0, i64 %18
  br label %26

26:                                               ; preds = %65, %15
  %27 = phi i64 [ %18, %15 ], [ %69, %65 ]
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !6
  %30 = icmp sgt i64 %20, %27
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %41, %31 ], [ %27, %26 ]
  %33 = shl i64 %32, 1
  %34 = add i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = or i64 %33, 1
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %35, align 4, !tbaa !6
  %39 = load i32, i32* %37, align 4, !tbaa !6
  %40 = icmp slt i32 %38, %39
  %41 = select i1 %40, i64 %36, i64 %34
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !6
  %44 = getelementptr inbounds i32, i32* %0, i64 %32
  store i32 %43, i32* %44, align 4, !tbaa !6
  %45 = icmp slt i64 %41, %20
  br i1 %45, label %31, label %46, !llvm.loop !16

46:                                               ; preds = %31, %26
  %47 = phi i64 [ %27, %26 ], [ %41, %31 ]
  %48 = icmp eq i64 %47, %18
  %49 = select i1 %22, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %24, align 4, !tbaa !6
  store i32 %51, i32* %25, align 4, !tbaa !6
  br label %52

52:                                               ; preds = %50, %46
  %53 = phi i64 [ %23, %50 ], [ %47, %46 ]
  %54 = icmp sgt i64 %53, %27
  br i1 %54, label %55, label %65

55:                                               ; preds = %52, %62
  %56 = phi i64 [ %58, %62 ], [ %53, %52 ]
  %57 = add nsw i64 %56, -1
  %58 = sdiv i64 %57, 2
  %59 = getelementptr inbounds i32, i32* %0, i64 %58
  %60 = load i32, i32* %59, align 4, !tbaa !6
  %61 = icmp slt i32 %60, %29
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds i32, i32* %0, i64 %56
  store i32 %60, i32* %63, align 4, !tbaa !6
  %64 = icmp sgt i64 %58, %27
  br i1 %64, label %55, label %65, !llvm.loop !17

65:                                               ; preds = %62, %55, %52
  %66 = phi i64 [ %53, %52 ], [ %58, %62 ], [ %56, %55 ]
  %67 = getelementptr inbounds i32, i32* %0, i64 %66
  store i32 %29, i32* %67, align 4, !tbaa !6
  %68 = icmp eq i64 %27, 0
  %69 = add nsw i64 %27, -1
  br i1 %68, label %70, label %26, !llvm.loop !18

70:                                               ; preds = %65
  %71 = icmp sgt i64 %11, 4
  br i1 %71, label %72, label %178

72:                                               ; preds = %70, %125
  %73 = phi i32* [ %74, %125 ], [ %12, %70 ]
  %74 = getelementptr inbounds i32, i32* %73, i64 -1
  %75 = load i32, i32* %74, align 4, !tbaa !6
  %76 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %76, i32* %74, align 4, !tbaa !6
  %77 = ptrtoint i32* %74 to i64
  %78 = sub i64 %77, %4
  %79 = ashr exact i64 %78, 2
  %80 = add nsw i64 %79, -1
  %81 = sdiv i64 %80, 2
  %82 = icmp sgt i64 %78, 8
  br i1 %82, label %83, label %98

83:                                               ; preds = %72, %83
  %84 = phi i64 [ %93, %83 ], [ 0, %72 ]
  %85 = shl i64 %84, 1
  %86 = add i64 %85, 2
  %87 = getelementptr inbounds i32, i32* %0, i64 %86
  %88 = or i64 %85, 1
  %89 = getelementptr inbounds i32, i32* %0, i64 %88
  %90 = load i32, i32* %87, align 4, !tbaa !6
  %91 = load i32, i32* %89, align 4, !tbaa !6
  %92 = icmp slt i32 %90, %91
  %93 = select i1 %92, i64 %88, i64 %86
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !6
  %96 = getelementptr inbounds i32, i32* %0, i64 %84
  store i32 %95, i32* %96, align 4, !tbaa !6
  %97 = icmp slt i64 %93, %81
  br i1 %97, label %83, label %98, !llvm.loop !16

98:                                               ; preds = %83, %72
  %99 = phi i64 [ 0, %72 ], [ %93, %83 ]
  %100 = and i64 %78, 4
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %112

102:                                              ; preds = %98
  %103 = add nsw i64 %79, -2
  %104 = sdiv i64 %103, 2
  %105 = icmp eq i64 %99, %104
  br i1 %105, label %106, label %112

106:                                              ; preds = %102
  %107 = shl i64 %99, 1
  %108 = or i64 %107, 1
  %109 = getelementptr inbounds i32, i32* %0, i64 %108
  %110 = load i32, i32* %109, align 4, !tbaa !6
  %111 = getelementptr inbounds i32, i32* %0, i64 %99
  store i32 %110, i32* %111, align 4, !tbaa !6
  br label %112

112:                                              ; preds = %106, %102, %98
  %113 = phi i64 [ %108, %106 ], [ %99, %102 ], [ %99, %98 ]
  %114 = icmp sgt i64 %113, 0
  br i1 %114, label %115, label %125

115:                                              ; preds = %112, %122
  %116 = phi i64 [ %118, %122 ], [ %113, %112 ]
  %117 = add nsw i64 %116, -1
  %118 = lshr i64 %117, 1
  %119 = getelementptr inbounds i32, i32* %0, i64 %118
  %120 = load i32, i32* %119, align 4, !tbaa !6
  %121 = icmp slt i32 %120, %75
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = getelementptr inbounds i32, i32* %0, i64 %116
  store i32 %120, i32* %123, align 4, !tbaa !6
  %124 = icmp ult i64 %117, 2
  br i1 %124, label %125, label %115, !llvm.loop !17

125:                                              ; preds = %122, %115, %112
  %126 = phi i64 [ %113, %112 ], [ %116, %115 ], [ 0, %122 ]
  %127 = getelementptr inbounds i32, i32* %0, i64 %126
  store i32 %75, i32* %127, align 4, !tbaa !6
  %128 = icmp sgt i64 %78, 4
  br i1 %128, label %72, label %178, !llvm.loop !19

129:                                              ; preds = %10
  %130 = add nsw i64 %13, -1
  %131 = lshr i64 %11, 3
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  %133 = getelementptr inbounds i32, i32* %12, i64 -1
  %134 = load i32, i32* %9, align 4, !tbaa !6
  %135 = load i32, i32* %132, align 4, !tbaa !6
  %136 = icmp slt i32 %134, %135
  %137 = load i32, i32* %133, align 4, !tbaa !6
  br i1 %136, label %138, label %147

138:                                              ; preds = %129
  %139 = icmp slt i32 %135, %137
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %135, i32* %0, align 4, !tbaa !6
  store i32 %141, i32* %132, align 4, !tbaa !6
  br label %156

142:                                              ; preds = %138
  %143 = icmp slt i32 %134, %137
  %144 = load i32, i32* %0, align 4, !tbaa !6
  br i1 %143, label %145, label %146

145:                                              ; preds = %142
  store i32 %137, i32* %0, align 4, !tbaa !6
  store i32 %144, i32* %133, align 4, !tbaa !6
  br label %156

146:                                              ; preds = %142
  store i32 %134, i32* %0, align 4, !tbaa !6
  store i32 %144, i32* %9, align 4, !tbaa !6
  br label %156

147:                                              ; preds = %129
  %148 = icmp slt i32 %134, %137
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %134, i32* %0, align 4, !tbaa !6
  store i32 %150, i32* %9, align 4, !tbaa !6
  br label %156

151:                                              ; preds = %147
  %152 = icmp slt i32 %135, %137
  %153 = load i32, i32* %0, align 4, !tbaa !6
  br i1 %152, label %154, label %155

154:                                              ; preds = %151
  store i32 %137, i32* %0, align 4, !tbaa !6
  store i32 %153, i32* %133, align 4, !tbaa !6
  br label %156

155:                                              ; preds = %151
  store i32 %135, i32* %0, align 4, !tbaa !6
  store i32 %153, i32* %132, align 4, !tbaa !6
  br label %156

156:                                              ; preds = %155, %154, %149, %146, %145, %140
  br label %157

157:                                              ; preds = %156, %173
  %158 = phi i32* [ %168, %173 ], [ %12, %156 ]
  %159 = phi i32* [ %165, %173 ], [ %9, %156 ]
  %160 = load i32, i32* %0, align 4, !tbaa !6
  br label %161

161:                                              ; preds = %161, %157
  %162 = phi i32* [ %159, %157 ], [ %165, %161 ]
  %163 = load i32, i32* %162, align 4, !tbaa !6
  %164 = icmp slt i32 %163, %160
  %165 = getelementptr inbounds i32, i32* %162, i64 1
  br i1 %164, label %161, label %166, !llvm.loop !20

166:                                              ; preds = %161, %166
  %167 = phi i32* [ %168, %166 ], [ %158, %161 ]
  %168 = getelementptr inbounds i32, i32* %167, i64 -1
  %169 = load i32, i32* %168, align 4, !tbaa !6
  %170 = icmp slt i32 %160, %169
  br i1 %170, label %166, label %171, !llvm.loop !21

171:                                              ; preds = %166
  %172 = icmp ult i32* %162, %168
  br i1 %172, label %173, label %174

173:                                              ; preds = %171
  store i32 %169, i32* %162, align 4, !tbaa !6
  store i32 %163, i32* %168, align 4, !tbaa !6
  br label %157, !llvm.loop !22

174:                                              ; preds = %171
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef nonnull %162, i32* noundef %12, i64 noundef %130)
  %175 = ptrtoint i32* %162 to i64
  %176 = sub i64 %175, %4
  %177 = icmp sgt i64 %176, 64
  br i1 %177, label %10, label %178, !llvm.loop !23

178:                                              ; preds = %174, %125, %3, %70
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* noundef %0, i32* noundef %1) local_unnamed_addr #5 comdat {
  %3 = ptrtoint i32* %1 to i64
  %4 = ptrtoint i32* %0 to i64
  %5 = sub i64 %3, %4
  %6 = icmp sgt i64 %5, 64
  br i1 %6, label %7, label %54

7:                                                ; preds = %2
  %8 = bitcast i32* %0 to i8*
  %9 = getelementptr i32, i32* %0, i64 1
  %10 = bitcast i32* %9 to i8*
  br label %11

11:                                               ; preds = %30, %7
  %12 = phi i64 [ 1, %7 ], [ %32, %30 ]
  %13 = phi i32* [ %0, %7 ], [ %14, %30 ]
  %14 = getelementptr inbounds i32, i32* %0, i64 %12
  %15 = load i32, i32* %14, align 4, !tbaa !6
  %16 = load i32, i32* %0, align 4, !tbaa !6
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = shl nsw i64 %12, 2
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #13
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %13, align 4, !tbaa !6
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %28, %23 ], [ %21, %20 ]
  %25 = phi i32* [ %27, %23 ], [ %13, %20 ]
  %26 = phi i32* [ %25, %23 ], [ %14, %20 ]
  store i32 %24, i32* %26, align 4, !tbaa !6
  %27 = getelementptr inbounds i32, i32* %25, i64 -1
  %28 = load i32, i32* %27, align 4, !tbaa !6
  %29 = icmp slt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !24

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !6
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !25

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %0, i64 16
  %36 = icmp eq i32* %35, %1
  br i1 %36, label %91, label %37

37:                                               ; preds = %34, %50
  %38 = phi i32* [ %52, %50 ], [ %35, %34 ]
  %39 = load i32, i32* %38, align 4, !tbaa !6
  %40 = getelementptr inbounds i32, i32* %38, i64 -1
  %41 = load i32, i32* %40, align 4, !tbaa !6
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %45 = phi i32* [ %47, %43 ], [ %40, %37 ]
  %46 = phi i32* [ %45, %43 ], [ %38, %37 ]
  store i32 %44, i32* %46, align 4, !tbaa !6
  %47 = getelementptr inbounds i32, i32* %45, i64 -1
  %48 = load i32, i32* %47, align 4, !tbaa !6
  %49 = icmp slt i32 %39, %48
  br i1 %49, label %43, label %50, !llvm.loop !24

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !6
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !26

54:                                               ; preds = %2
  %55 = icmp eq i32* %0, %1
  br i1 %55, label %91, label %56

56:                                               ; preds = %54
  %57 = getelementptr inbounds i32, i32* %0, i64 1
  %58 = icmp eq i32* %57, %1
  br i1 %58, label %91, label %59

59:                                               ; preds = %56
  %60 = bitcast i32* %0 to i8*
  br label %61

61:                                               ; preds = %87, %59
  %62 = phi i32* [ %57, %59 ], [ %89, %87 ]
  %63 = phi i32* [ %0, %59 ], [ %62, %87 ]
  %64 = load i32, i32* %62, align 4, !tbaa !6
  %65 = load i32, i32* %0, align 4, !tbaa !6
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = ptrtoint i32* %62 to i64
  %69 = sub i64 %68, %4
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = getelementptr inbounds i32, i32* %63, i64 2
  %73 = ashr exact i64 %69, 2
  %74 = sub nsw i64 0, %73
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = bitcast i32* %75 to i8*
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #13
  br label %87

77:                                               ; preds = %61
  %78 = load i32, i32* %63, align 4, !tbaa !6
  %79 = icmp slt i32 %64, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %80
  %81 = phi i32 [ %85, %80 ], [ %78, %77 ]
  %82 = phi i32* [ %84, %80 ], [ %63, %77 ]
  %83 = phi i32* [ %82, %80 ], [ %62, %77 ]
  store i32 %81, i32* %83, align 4, !tbaa !6
  %84 = getelementptr inbounds i32, i32* %82, i64 -1
  %85 = load i32, i32* %84, align 4, !tbaa !6
  %86 = icmp slt i32 %64, %85
  br i1 %86, label %80, label %87, !llvm.loop !24

87:                                               ; preds = %80, %77, %71, %67
  %88 = phi i32* [ %0, %67 ], [ %0, %71 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !6
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !25

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY_reprocessed.cpp() #3 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <4 x i32> @llvm.abs.v4i32(<4 x i32>, i1 immarg) #10

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #8 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #12 = { nofree nosync nounwind readnone willreturn }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 1}
!4 = !{!"Ubuntu clang version 14.0.0-1ubuntu1.1"}
!5 = !{i64 0, i64 65}
!6 = !{!7, !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C++ TBAA"}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.isvectorized", i32 1}
!13 = distinct !{!13, !11}
!14 = distinct !{!14, !11, !15, !12}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !11}
!17 = distinct !{!17, !11}
!18 = distinct !{!18, !11}
!19 = distinct !{!19, !11}
!20 = distinct !{!20, !11}
!21 = distinct !{!21, !11}
!22 = distinct !{!22, !11}
!23 = distinct !{!23, !11}
!24 = distinct !{!24, !11}
!25 = distinct !{!25, !11}
!26 = distinct !{!26, !11}
