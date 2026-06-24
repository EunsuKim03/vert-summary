; ModuleID = 'llvm/cpp_transcoder/SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1/SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1/SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %80

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  %6 = icmp ult i32 %1, 8
  br i1 %6, label %78, label %7

7:                                                ; preds = %4
  %8 = and i64 %5, 4294967288
  br label %9

9:                                                ; preds = %73, %7
  %10 = phi i64 [ 0, %7 ], [ %74, %73 ]
  %11 = or i64 %10, 4
  %12 = getelementptr inbounds i32, i32* %0, i64 %10
  %13 = bitcast i32* %12 to <4 x i32>*
  %14 = load <4 x i32>, <4 x i32>* %13, align 4, !tbaa !5
  %15 = getelementptr inbounds i32, i32* %12, i64 4
  %16 = bitcast i32* %15 to <4 x i32>*
  %17 = load <4 x i32>, <4 x i32>* %16, align 4, !tbaa !5
  %18 = trunc <4 x i32> %14 to <4 x i1>
  %19 = trunc <4 x i32> %17 to <4 x i1>
  %20 = extractelement <4 x i1> %18, i64 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %9
  %22 = extractelement <4 x i32> %14, i64 0
  %23 = sub nsw i32 0, %22
  %24 = getelementptr inbounds i32, i32* %0, i64 %10
  store i32 %23, i32* %24, align 4, !tbaa !5
  br label %25

25:                                               ; preds = %21, %9
  %26 = extractelement <4 x i1> %18, i64 1
  br i1 %26, label %27, label %32

27:                                               ; preds = %25
  %28 = or i64 %10, 1
  %29 = extractelement <4 x i32> %14, i64 1
  %30 = sub nsw i32 0, %29
  %31 = getelementptr inbounds i32, i32* %0, i64 %28
  store i32 %30, i32* %31, align 4, !tbaa !5
  br label %32

32:                                               ; preds = %27, %25
  %33 = extractelement <4 x i1> %18, i64 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %32
  %35 = or i64 %10, 2
  %36 = extractelement <4 x i32> %14, i64 2
  %37 = sub nsw i32 0, %36
  %38 = getelementptr inbounds i32, i32* %0, i64 %35
  store i32 %37, i32* %38, align 4, !tbaa !5
  br label %39

39:                                               ; preds = %34, %32
  %40 = extractelement <4 x i1> %18, i64 3
  br i1 %40, label %41, label %46

41:                                               ; preds = %39
  %42 = or i64 %10, 3
  %43 = extractelement <4 x i32> %14, i64 3
  %44 = sub nsw i32 0, %43
  %45 = getelementptr inbounds i32, i32* %0, i64 %42
  store i32 %44, i32* %45, align 4, !tbaa !5
  br label %46

46:                                               ; preds = %41, %39
  %47 = extractelement <4 x i1> %19, i64 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %46
  %49 = extractelement <4 x i32> %17, i64 0
  %50 = sub nsw i32 0, %49
  %51 = getelementptr inbounds i32, i32* %0, i64 %11
  store i32 %50, i32* %51, align 4, !tbaa !5
  br label %52

52:                                               ; preds = %48, %46
  %53 = extractelement <4 x i1> %19, i64 1
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = or i64 %10, 5
  %56 = extractelement <4 x i32> %17, i64 1
  %57 = sub nsw i32 0, %56
  %58 = getelementptr inbounds i32, i32* %0, i64 %55
  store i32 %57, i32* %58, align 4, !tbaa !5
  br label %59

59:                                               ; preds = %54, %52
  %60 = extractelement <4 x i1> %19, i64 2
  br i1 %60, label %61, label %66

61:                                               ; preds = %59
  %62 = or i64 %10, 6
  %63 = extractelement <4 x i32> %17, i64 2
  %64 = sub nsw i32 0, %63
  %65 = getelementptr inbounds i32, i32* %0, i64 %62
  store i32 %64, i32* %65, align 4, !tbaa !5
  br label %66

66:                                               ; preds = %61, %59
  %67 = extractelement <4 x i1> %19, i64 3
  br i1 %67, label %68, label %73

68:                                               ; preds = %66
  %69 = or i64 %10, 7
  %70 = extractelement <4 x i32> %17, i64 3
  %71 = sub nsw i32 0, %70
  %72 = getelementptr inbounds i32, i32* %0, i64 %69
  store i32 %71, i32* %72, align 4, !tbaa !5
  br label %73

73:                                               ; preds = %68, %66
  %74 = add nuw i64 %10, 8
  %75 = icmp eq i64 %74, %8
  br i1 %75, label %76, label %9, !llvm.loop !9

76:                                               ; preds = %73
  %77 = icmp eq i64 %8, %5
  br i1 %77, label %80, label %78

78:                                               ; preds = %4, %76
  %79 = phi i64 [ 0, %4 ], [ %8, %76 ]
  br label %165

80:                                               ; preds = %173, %76, %2
  %81 = sext i32 %1 to i64
  %82 = getelementptr inbounds i32, i32* %0, i64 %81
  %83 = icmp eq i32 %1, 0
  br i1 %83, label %88, label %84

84:                                               ; preds = %80
  %85 = tail call i64 @llvm.ctlz.i64(i64 %81, i1 true) #7, !range !12
  %86 = shl nuw nsw i64 %85, 1
  %87 = xor i64 %86, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef %0, i32* noundef nonnull %82, i64 noundef %87)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* noundef %0, i32* noundef nonnull %82)
  br label %88

88:                                               ; preds = %80, %84
  br i1 %3, label %89, label %176

89:                                               ; preds = %88
  %90 = zext i32 %1 to i64
  %91 = icmp ult i32 %1, 8
  br i1 %91, label %163, label %92

92:                                               ; preds = %89
  %93 = and i64 %90, 4294967288
  br label %94

94:                                               ; preds = %158, %92
  %95 = phi i64 [ 0, %92 ], [ %159, %158 ]
  %96 = or i64 %95, 4
  %97 = getelementptr inbounds i32, i32* %0, i64 %95
  %98 = bitcast i32* %97 to <4 x i32>*
  %99 = load <4 x i32>, <4 x i32>* %98, align 4, !tbaa !5
  %100 = getelementptr inbounds i32, i32* %97, i64 4
  %101 = bitcast i32* %100 to <4 x i32>*
  %102 = load <4 x i32>, <4 x i32>* %101, align 4, !tbaa !5
  %103 = trunc <4 x i32> %99 to <4 x i1>
  %104 = trunc <4 x i32> %102 to <4 x i1>
  %105 = extractelement <4 x i1> %103, i64 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %94
  %107 = extractelement <4 x i32> %99, i64 0
  %108 = sub nsw i32 0, %107
  %109 = getelementptr inbounds i32, i32* %0, i64 %95
  store i32 %108, i32* %109, align 4, !tbaa !5
  br label %110

110:                                              ; preds = %106, %94
  %111 = extractelement <4 x i1> %103, i64 1
  br i1 %111, label %112, label %117

112:                                              ; preds = %110
  %113 = or i64 %95, 1
  %114 = extractelement <4 x i32> %99, i64 1
  %115 = sub nsw i32 0, %114
  %116 = getelementptr inbounds i32, i32* %0, i64 %113
  store i32 %115, i32* %116, align 4, !tbaa !5
  br label %117

117:                                              ; preds = %112, %110
  %118 = extractelement <4 x i1> %103, i64 2
  br i1 %118, label %119, label %124

119:                                              ; preds = %117
  %120 = or i64 %95, 2
  %121 = extractelement <4 x i32> %99, i64 2
  %122 = sub nsw i32 0, %121
  %123 = getelementptr inbounds i32, i32* %0, i64 %120
  store i32 %122, i32* %123, align 4, !tbaa !5
  br label %124

124:                                              ; preds = %119, %117
  %125 = extractelement <4 x i1> %103, i64 3
  br i1 %125, label %126, label %131

126:                                              ; preds = %124
  %127 = or i64 %95, 3
  %128 = extractelement <4 x i32> %99, i64 3
  %129 = sub nsw i32 0, %128
  %130 = getelementptr inbounds i32, i32* %0, i64 %127
  store i32 %129, i32* %130, align 4, !tbaa !5
  br label %131

131:                                              ; preds = %126, %124
  %132 = extractelement <4 x i1> %104, i64 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %131
  %134 = extractelement <4 x i32> %102, i64 0
  %135 = sub nsw i32 0, %134
  %136 = getelementptr inbounds i32, i32* %0, i64 %96
  store i32 %135, i32* %136, align 4, !tbaa !5
  br label %137

137:                                              ; preds = %133, %131
  %138 = extractelement <4 x i1> %104, i64 1
  br i1 %138, label %139, label %144

139:                                              ; preds = %137
  %140 = or i64 %95, 5
  %141 = extractelement <4 x i32> %102, i64 1
  %142 = sub nsw i32 0, %141
  %143 = getelementptr inbounds i32, i32* %0, i64 %140
  store i32 %142, i32* %143, align 4, !tbaa !5
  br label %144

144:                                              ; preds = %139, %137
  %145 = extractelement <4 x i1> %104, i64 2
  br i1 %145, label %146, label %151

146:                                              ; preds = %144
  %147 = or i64 %95, 6
  %148 = extractelement <4 x i32> %102, i64 2
  %149 = sub nsw i32 0, %148
  %150 = getelementptr inbounds i32, i32* %0, i64 %147
  store i32 %149, i32* %150, align 4, !tbaa !5
  br label %151

151:                                              ; preds = %146, %144
  %152 = extractelement <4 x i1> %104, i64 3
  br i1 %152, label %153, label %158

153:                                              ; preds = %151
  %154 = or i64 %95, 7
  %155 = extractelement <4 x i32> %102, i64 3
  %156 = sub nsw i32 0, %155
  %157 = getelementptr inbounds i32, i32* %0, i64 %154
  store i32 %156, i32* %157, align 4, !tbaa !5
  br label %158

158:                                              ; preds = %153, %151
  %159 = add nuw i64 %95, 8
  %160 = icmp eq i64 %159, %93
  br i1 %160, label %161, label %94, !llvm.loop !13

161:                                              ; preds = %158
  %162 = icmp eq i64 %93, %90
  br i1 %162, label %176, label %163

163:                                              ; preds = %89, %161
  %164 = phi i64 [ 0, %89 ], [ %93, %161 ]
  br label %177

165:                                              ; preds = %78, %173
  %166 = phi i64 [ %174, %173 ], [ %79, %78 ]
  %167 = getelementptr inbounds i32, i32* %0, i64 %166
  %168 = load i32, i32* %167, align 4, !tbaa !5
  %169 = and i32 %168, 1
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %165
  %172 = sub nsw i32 0, %168
  store i32 %172, i32* %167, align 4, !tbaa !5
  br label %173

173:                                              ; preds = %165, %171
  %174 = add nuw nsw i64 %166, 1
  %175 = icmp eq i64 %174, %5
  br i1 %175, label %80, label %165, !llvm.loop !14

176:                                              ; preds = %185, %161, %88
  ret void

177:                                              ; preds = %163, %185
  %178 = phi i64 [ %186, %185 ], [ %164, %163 ]
  %179 = getelementptr inbounds i32, i32* %0, i64 %178
  %180 = load i32, i32* %179, align 4, !tbaa !5
  %181 = and i32 %180, 1
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %177
  %184 = sub nsw i32 0, %180
  store i32 %184, i32* %179, align 4, !tbaa !5
  br label %185

185:                                              ; preds = %177, %183
  %186 = add nuw nsw i64 %178, 1
  %187 = icmp eq i64 %186, %90
  br i1 %187, label %176, label %177, !llvm.loop !16
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef %0, i32* noundef %1, i64 noundef %2) local_unnamed_addr #4 comdat {
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
  %29 = load i32, i32* %28, align 4, !tbaa !5
  %30 = icmp sgt i64 %20, %27
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %41, %31 ], [ %27, %26 ]
  %33 = shl i64 %32, 1
  %34 = add i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = or i64 %33, 1
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %35, align 4, !tbaa !5
  %39 = load i32, i32* %37, align 4, !tbaa !5
  %40 = icmp slt i32 %38, %39
  %41 = select i1 %40, i64 %36, i64 %34
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !5
  %44 = getelementptr inbounds i32, i32* %0, i64 %32
  store i32 %43, i32* %44, align 4, !tbaa !5
  %45 = icmp slt i64 %41, %20
  br i1 %45, label %31, label %46, !llvm.loop !17

46:                                               ; preds = %31, %26
  %47 = phi i64 [ %27, %26 ], [ %41, %31 ]
  %48 = icmp eq i64 %47, %18
  %49 = select i1 %22, i1 %48, i1 false
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* %24, align 4, !tbaa !5
  store i32 %51, i32* %25, align 4, !tbaa !5
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
  %60 = load i32, i32* %59, align 4, !tbaa !5
  %61 = icmp slt i32 %60, %29
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = getelementptr inbounds i32, i32* %0, i64 %56
  store i32 %60, i32* %63, align 4, !tbaa !5
  %64 = icmp sgt i64 %58, %27
  br i1 %64, label %55, label %65, !llvm.loop !18

65:                                               ; preds = %62, %55, %52
  %66 = phi i64 [ %53, %52 ], [ %58, %62 ], [ %56, %55 ]
  %67 = getelementptr inbounds i32, i32* %0, i64 %66
  store i32 %29, i32* %67, align 4, !tbaa !5
  %68 = icmp eq i64 %27, 0
  %69 = add nsw i64 %27, -1
  br i1 %68, label %70, label %26, !llvm.loop !19

70:                                               ; preds = %65
  %71 = icmp sgt i64 %11, 4
  br i1 %71, label %72, label %178

72:                                               ; preds = %70, %125
  %73 = phi i32* [ %74, %125 ], [ %12, %70 ]
  %74 = getelementptr inbounds i32, i32* %73, i64 -1
  %75 = load i32, i32* %74, align 4, !tbaa !5
  %76 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %76, i32* %74, align 4, !tbaa !5
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
  %90 = load i32, i32* %87, align 4, !tbaa !5
  %91 = load i32, i32* %89, align 4, !tbaa !5
  %92 = icmp slt i32 %90, %91
  %93 = select i1 %92, i64 %88, i64 %86
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %94, align 4, !tbaa !5
  %96 = getelementptr inbounds i32, i32* %0, i64 %84
  store i32 %95, i32* %96, align 4, !tbaa !5
  %97 = icmp slt i64 %93, %81
  br i1 %97, label %83, label %98, !llvm.loop !17

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
  %110 = load i32, i32* %109, align 4, !tbaa !5
  %111 = getelementptr inbounds i32, i32* %0, i64 %99
  store i32 %110, i32* %111, align 4, !tbaa !5
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
  %120 = load i32, i32* %119, align 4, !tbaa !5
  %121 = icmp slt i32 %120, %75
  br i1 %121, label %122, label %125

122:                                              ; preds = %115
  %123 = getelementptr inbounds i32, i32* %0, i64 %116
  store i32 %120, i32* %123, align 4, !tbaa !5
  %124 = icmp ult i64 %117, 2
  br i1 %124, label %125, label %115, !llvm.loop !18

125:                                              ; preds = %122, %115, %112
  %126 = phi i64 [ %113, %112 ], [ %116, %115 ], [ 0, %122 ]
  %127 = getelementptr inbounds i32, i32* %0, i64 %126
  store i32 %75, i32* %127, align 4, !tbaa !5
  %128 = icmp sgt i64 %78, 4
  br i1 %128, label %72, label %178, !llvm.loop !20

129:                                              ; preds = %10
  %130 = add nsw i64 %13, -1
  %131 = lshr i64 %11, 3
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  %133 = getelementptr inbounds i32, i32* %12, i64 -1
  %134 = load i32, i32* %9, align 4, !tbaa !5
  %135 = load i32, i32* %132, align 4, !tbaa !5
  %136 = icmp slt i32 %134, %135
  %137 = load i32, i32* %133, align 4, !tbaa !5
  br i1 %136, label %138, label %147

138:                                              ; preds = %129
  %139 = icmp slt i32 %135, %137
  br i1 %139, label %140, label %142

140:                                              ; preds = %138
  %141 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %135, i32* %0, align 4, !tbaa !5
  store i32 %141, i32* %132, align 4, !tbaa !5
  br label %156

142:                                              ; preds = %138
  %143 = icmp slt i32 %134, %137
  %144 = load i32, i32* %0, align 4, !tbaa !5
  br i1 %143, label %145, label %146

145:                                              ; preds = %142
  store i32 %137, i32* %0, align 4, !tbaa !5
  store i32 %144, i32* %133, align 4, !tbaa !5
  br label %156

146:                                              ; preds = %142
  store i32 %134, i32* %0, align 4, !tbaa !5
  store i32 %144, i32* %9, align 4, !tbaa !5
  br label %156

147:                                              ; preds = %129
  %148 = icmp slt i32 %134, %137
  br i1 %148, label %149, label %151

149:                                              ; preds = %147
  %150 = load i32, i32* %0, align 4, !tbaa !5
  store i32 %134, i32* %0, align 4, !tbaa !5
  store i32 %150, i32* %9, align 4, !tbaa !5
  br label %156

151:                                              ; preds = %147
  %152 = icmp slt i32 %135, %137
  %153 = load i32, i32* %0, align 4, !tbaa !5
  br i1 %152, label %154, label %155

154:                                              ; preds = %151
  store i32 %137, i32* %0, align 4, !tbaa !5
  store i32 %153, i32* %133, align 4, !tbaa !5
  br label %156

155:                                              ; preds = %151
  store i32 %135, i32* %0, align 4, !tbaa !5
  store i32 %153, i32* %132, align 4, !tbaa !5
  br label %156

156:                                              ; preds = %155, %154, %149, %146, %145, %140
  br label %157

157:                                              ; preds = %156, %173
  %158 = phi i32* [ %168, %173 ], [ %12, %156 ]
  %159 = phi i32* [ %165, %173 ], [ %9, %156 ]
  %160 = load i32, i32* %0, align 4, !tbaa !5
  br label %161

161:                                              ; preds = %161, %157
  %162 = phi i32* [ %159, %157 ], [ %165, %161 ]
  %163 = load i32, i32* %162, align 4, !tbaa !5
  %164 = icmp slt i32 %163, %160
  %165 = getelementptr inbounds i32, i32* %162, i64 1
  br i1 %164, label %161, label %166, !llvm.loop !21

166:                                              ; preds = %161, %166
  %167 = phi i32* [ %168, %166 ], [ %158, %161 ]
  %168 = getelementptr inbounds i32, i32* %167, i64 -1
  %169 = load i32, i32* %168, align 4, !tbaa !5
  %170 = icmp slt i32 %160, %169
  br i1 %170, label %166, label %171, !llvm.loop !22

171:                                              ; preds = %166
  %172 = icmp ult i32* %162, %168
  br i1 %172, label %173, label %174

173:                                              ; preds = %171
  store i32 %169, i32* %162, align 4, !tbaa !5
  store i32 %163, i32* %168, align 4, !tbaa !5
  br label %157, !llvm.loop !23

174:                                              ; preds = %171
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef nonnull %162, i32* noundef %12, i64 noundef %130)
  %175 = ptrtoint i32* %162 to i64
  %176 = sub i64 %175, %4
  %177 = icmp sgt i64 %176, 64
  br i1 %177, label %10, label %178, !llvm.loop !24

178:                                              ; preds = %174, %125, %3, %70
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* noundef %0, i32* noundef %1) local_unnamed_addr #3 comdat {
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
  %15 = load i32, i32* %14, align 4, !tbaa !5
  %16 = load i32, i32* %0, align 4, !tbaa !5
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = shl nsw i64 %12, 2
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #7
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %13, align 4, !tbaa !5
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %28, %23 ], [ %21, %20 ]
  %25 = phi i32* [ %27, %23 ], [ %13, %20 ]
  %26 = phi i32* [ %25, %23 ], [ %14, %20 ]
  store i32 %24, i32* %26, align 4, !tbaa !5
  %27 = getelementptr inbounds i32, i32* %25, i64 -1
  %28 = load i32, i32* %27, align 4, !tbaa !5
  %29 = icmp slt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !25

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !5
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !26

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %0, i64 16
  %36 = icmp eq i32* %35, %1
  br i1 %36, label %91, label %37

37:                                               ; preds = %34, %50
  %38 = phi i32* [ %52, %50 ], [ %35, %34 ]
  %39 = load i32, i32* %38, align 4, !tbaa !5
  %40 = getelementptr inbounds i32, i32* %38, i64 -1
  %41 = load i32, i32* %40, align 4, !tbaa !5
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %45 = phi i32* [ %47, %43 ], [ %40, %37 ]
  %46 = phi i32* [ %45, %43 ], [ %38, %37 ]
  store i32 %44, i32* %46, align 4, !tbaa !5
  %47 = getelementptr inbounds i32, i32* %45, i64 -1
  %48 = load i32, i32* %47, align 4, !tbaa !5
  %49 = icmp slt i32 %39, %48
  br i1 %49, label %43, label %50, !llvm.loop !25

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !5
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !27

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
  %64 = load i32, i32* %62, align 4, !tbaa !5
  %65 = load i32, i32* %0, align 4, !tbaa !5
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
  tail call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #7
  br label %87

77:                                               ; preds = %61
  %78 = load i32, i32* %63, align 4, !tbaa !5
  %79 = icmp slt i32 %64, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %80
  %81 = phi i32 [ %85, %80 ], [ %78, %77 ]
  %82 = phi i32* [ %84, %80 ], [ %63, %77 ]
  %83 = phi i32* [ %82, %80 ], [ %62, %77 ]
  store i32 %81, i32* %83, align 4, !tbaa !5
  %84 = getelementptr inbounds i32, i32* %82, i64 -1
  %85 = load i32, i32* %84, align 4, !tbaa !5
  %86 = icmp slt i32 %64, %85
  br i1 %86, label %80, label %87, !llvm.loop !25

87:                                               ; preds = %80, %77, %71, %67
  %88 = phi i32* [ %0, %67 ], [ %0, %71 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !5
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !26

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #5

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #6

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SORT_EVEN_NUMBERS_ASCENDING_ORDER_SORT_ODD_NUMBERS_DESCENDING_ORDER_1_reprocessed.cpp() #4 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #7
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree nounwind willreturn }
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
!9 = distinct !{!9, !10, !11}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{i64 0, i64 65}
!13 = distinct !{!13, !10, !11}
!14 = distinct !{!14, !10, !15, !11}
!15 = !{!"llvm.loop.unroll.runtime.disable"}
!16 = distinct !{!16, !10, !15, !11}
!17 = distinct !{!17, !10}
!18 = distinct !{!18, !10}
!19 = distinct !{!19, !10}
!20 = distinct !{!20, !10}
!21 = distinct !{!21, !10}
!22 = distinct !{!22, !10}
!23 = distinct !{!23, !10}
!24 = distinct !{!24, !10}
!25 = distinct !{!25, !10}
!26 = distinct !{!26, !10}
!27 = distinct !{!27, !10}
