; ModuleID = 'llvm/cpp_transcoder/SUM_AREA_RECTANGLES_POSSIBLE_ARRAY/SUM_AREA_RECTANGLES_POSSIBLE_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/SUM_AREA_RECTANGLES_POSSIBLE_ARRAY/SUM_AREA_RECTANGLES_POSSIBLE_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_ = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_SUM_AREA_RECTANGLES_POSSIBLE_ARRAY_reprocessed.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local noundef i32 @_Z6f_goldPii(i32* noundef %0, i32 noundef %1) local_unnamed_addr #3 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds i32, i32* %0, i64 %3
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = call i64 @llvm.ctlz.i64(i64 %3, i1 true) #6, !range !5
  %8 = shl nuw nsw i64 %7, 1
  %9 = xor i64 %8, 126
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_(i32* noundef %0, i32* noundef nonnull %4, i64 noundef %9)
  call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_(i32* noundef %0, i32* noundef nonnull %4)
  br label %10

10:                                               ; preds = %2, %6
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %14, label %12

12:                                               ; preds = %39, %10
  %13 = phi i32 [ 0, %10 ], [ %40, %39 ]
  ret i32 %13

14:                                               ; preds = %10, %39
  %15 = phi i32 [ %44, %39 ], [ 0, %10 ]
  %16 = phi i32 [ %42, %39 ], [ undef, %10 ]
  %17 = phi i8 [ %41, %39 ], [ 0, %10 ]
  %18 = phi i32 [ %40, %39 ], [ 0, %10 ]
  %19 = sext i32 %15 to i64
  %20 = getelementptr inbounds i32, i32* %0, i64 %19
  %21 = load i32, i32* %20, align 4, !tbaa !6
  %22 = add nsw i32 %15, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %0, i64 %23
  %25 = load i32, i32* %24, align 4, !tbaa !6
  %26 = icmp eq i32 %21, %25
  %27 = sub nsw i32 %21, %25
  %28 = icmp eq i32 %27, 1
  %29 = select i1 %26, i1 true, i1 %28
  %30 = and i8 %17, 1
  %31 = icmp eq i8 %30, 0
  %32 = select i1 %29, i1 %31, i1 false
  br i1 %32, label %39, label %33

33:                                               ; preds = %14
  %34 = xor i1 %29, true
  %35 = select i1 %34, i1 true, i1 %31
  br i1 %35, label %39, label %36

36:                                               ; preds = %33
  %37 = mul nsw i32 %25, %16
  %38 = add nsw i32 %37, %18
  br label %39

39:                                               ; preds = %14, %33, %36
  %40 = phi i32 [ %38, %36 ], [ %18, %33 ], [ %18, %14 ]
  %41 = phi i8 [ 0, %36 ], [ %17, %33 ], [ 1, %14 ]
  %42 = phi i32 [ %16, %36 ], [ %16, %33 ], [ %25, %14 ]
  %43 = phi i32 [ %22, %36 ], [ %15, %33 ], [ %22, %14 ]
  %44 = add nsw i32 %43, 1
  %45 = icmp slt i32 %44, %1
  br i1 %45, label %14, label %12, !llvm.loop !10
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_(i32* noundef %0, i32* noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat {
  %4 = ptrtoint i32* %0 to i64
  %5 = ptrtoint i32* %1 to i64
  %6 = sub i64 %5, %4
  %7 = icmp sgt i64 %6, 64
  br i1 %7, label %8, label %184

8:                                                ; preds = %3
  %9 = getelementptr inbounds i32, i32* %0, i64 1
  br label %10

10:                                               ; preds = %8, %180
  %11 = phi i64 [ %6, %8 ], [ %182, %180 ]
  %12 = phi i32* [ %1, %8 ], [ %168, %180 ]
  %13 = phi i64 [ %2, %8 ], [ %135, %180 ]
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %134

15:                                               ; preds = %10
  %16 = ptrtoint i32* %0 to i64
  %17 = ashr exact i64 %11, 2
  %18 = icmp slt i64 %11, 8
  br i1 %18, label %75, label %19

19:                                               ; preds = %15
  %20 = add nsw i64 %17, -2
  %21 = sdiv i64 %20, 2
  %22 = add nsw i64 %17, -1
  %23 = sdiv i64 %22, 2
  %24 = and i64 %11, 4
  %25 = icmp eq i64 %24, 0
  br label %26

26:                                               ; preds = %69, %19
  %27 = phi i64 [ %21, %19 ], [ %74, %69 ]
  %28 = getelementptr inbounds i32, i32* %0, i64 %27
  %29 = load i32, i32* %28, align 4, !tbaa !6
  %30 = icmp sgt i64 %23, %27
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
  %40 = icmp sgt i32 %38, %39
  %41 = select i1 %40, i64 %36, i64 %34
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !6
  %44 = getelementptr inbounds i32, i32* %0, i64 %32
  store i32 %43, i32* %44, align 4, !tbaa !6
  %45 = icmp slt i64 %41, %23
  br i1 %45, label %31, label %46, !llvm.loop !13

46:                                               ; preds = %31, %26
  %47 = phi i64 [ %27, %26 ], [ %41, %31 ]
  %48 = icmp eq i64 %47, %21
  %49 = select i1 %25, i1 %48, i1 false
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = shl i64 %47, 1
  %52 = or i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !6
  %55 = getelementptr inbounds i32, i32* %0, i64 %47
  store i32 %54, i32* %55, align 4, !tbaa !6
  br label %56

56:                                               ; preds = %50, %46
  %57 = phi i64 [ %52, %50 ], [ %47, %46 ]
  %58 = icmp sgt i64 %57, %27
  br i1 %58, label %59, label %69

59:                                               ; preds = %56, %66
  %60 = phi i64 [ %62, %66 ], [ %57, %56 ]
  %61 = add nsw i64 %60, -1
  %62 = sdiv i64 %61, 2
  %63 = getelementptr inbounds i32, i32* %0, i64 %62
  %64 = load i32, i32* %63, align 4, !tbaa !6
  %65 = icmp sgt i32 %64, %29
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = getelementptr inbounds i32, i32* %0, i64 %60
  store i32 %64, i32* %67, align 4, !tbaa !6
  %68 = icmp sgt i64 %62, %27
  br i1 %68, label %59, label %69, !llvm.loop !14

69:                                               ; preds = %66, %59, %56
  %70 = phi i64 [ %57, %56 ], [ %60, %59 ], [ %62, %66 ]
  %71 = getelementptr inbounds i32, i32* %0, i64 %70
  store i32 %29, i32* %71, align 4, !tbaa !6
  %72 = icmp eq i64 %27, 0
  %73 = add nsw i64 %27, -1
  %74 = select i1 %72, i64 0, i64 %73
  br i1 %72, label %75, label %26, !llvm.loop !15

75:                                               ; preds = %69, %15
  %76 = icmp sgt i64 %11, 4
  br i1 %76, label %77, label %184

77:                                               ; preds = %75, %130
  %78 = phi i32* [ %79, %130 ], [ %12, %75 ]
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  %80 = load i32, i32* %79, align 4, !tbaa !6
  %81 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %81, i32* %79, align 4, !tbaa !6
  %82 = ptrtoint i32* %79 to i64
  %83 = sub i64 %82, %16
  %84 = ashr exact i64 %83, 2
  %85 = add nsw i64 %84, -1
  %86 = sdiv i64 %85, 2
  %87 = icmp sgt i64 %83, 8
  br i1 %87, label %88, label %103

88:                                               ; preds = %77, %88
  %89 = phi i64 [ %98, %88 ], [ 0, %77 ]
  %90 = shl i64 %89, 1
  %91 = add i64 %90, 2
  %92 = getelementptr inbounds i32, i32* %0, i64 %91
  %93 = or i64 %90, 1
  %94 = getelementptr inbounds i32, i32* %0, i64 %93
  %95 = load i32, i32* %92, align 4, !tbaa !6
  %96 = load i32, i32* %94, align 4, !tbaa !6
  %97 = icmp sgt i32 %95, %96
  %98 = select i1 %97, i64 %93, i64 %91
  %99 = getelementptr inbounds i32, i32* %0, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !6
  %101 = getelementptr inbounds i32, i32* %0, i64 %89
  store i32 %100, i32* %101, align 4, !tbaa !6
  %102 = icmp slt i64 %98, %86
  br i1 %102, label %88, label %103, !llvm.loop !13

103:                                              ; preds = %88, %77
  %104 = phi i64 [ 0, %77 ], [ %98, %88 ]
  %105 = and i64 %83, 4
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = add nsw i64 %84, -2
  %109 = sdiv i64 %108, 2
  %110 = icmp eq i64 %104, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = shl i64 %104, 1
  %113 = or i64 %112, 1
  %114 = getelementptr inbounds i32, i32* %0, i64 %113
  %115 = load i32, i32* %114, align 4, !tbaa !6
  %116 = getelementptr inbounds i32, i32* %0, i64 %104
  store i32 %115, i32* %116, align 4, !tbaa !6
  br label %117

117:                                              ; preds = %111, %107, %103
  %118 = phi i64 [ %113, %111 ], [ %104, %107 ], [ %104, %103 ]
  %119 = icmp sgt i64 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %117, %127
  %121 = phi i64 [ %123, %127 ], [ %118, %117 ]
  %122 = add nsw i64 %121, -1
  %123 = sdiv i64 %122, 2
  %124 = getelementptr inbounds i32, i32* %0, i64 %123
  %125 = load i32, i32* %124, align 4, !tbaa !6
  %126 = icmp sgt i32 %125, %80
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = getelementptr inbounds i32, i32* %0, i64 %121
  store i32 %125, i32* %128, align 4, !tbaa !6
  %129 = icmp sgt i64 %121, 2
  br i1 %129, label %120, label %130, !llvm.loop !14

130:                                              ; preds = %127, %120, %117
  %131 = phi i64 [ %118, %117 ], [ %121, %120 ], [ %123, %127 ]
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  store i32 %80, i32* %132, align 4, !tbaa !6
  %133 = icmp sgt i64 %83, 4
  br i1 %133, label %77, label %184, !llvm.loop !16

134:                                              ; preds = %10
  %135 = add nsw i64 %13, -1
  %136 = ashr exact i64 %11, 2
  %137 = sdiv i64 %136, 2
  %138 = getelementptr inbounds i32, i32* %0, i64 %137
  %139 = getelementptr inbounds i32, i32* %12, i64 -1
  %140 = load i32, i32* %9, align 4, !tbaa !6
  %141 = load i32, i32* %138, align 4, !tbaa !6
  %142 = icmp sgt i32 %140, %141
  %143 = load i32, i32* %139, align 4, !tbaa !6
  br i1 %142, label %144, label %153

144:                                              ; preds = %134
  %145 = icmp sgt i32 %141, %143
  br i1 %145, label %146, label %148

146:                                              ; preds = %144
  %147 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %141, i32* %0, align 4, !tbaa !6
  store i32 %147, i32* %138, align 4, !tbaa !6
  br label %162

148:                                              ; preds = %144
  %149 = icmp sgt i32 %140, %143
  %150 = load i32, i32* %0, align 4, !tbaa !6
  br i1 %149, label %151, label %152

151:                                              ; preds = %148
  store i32 %143, i32* %0, align 4, !tbaa !6
  store i32 %150, i32* %139, align 4, !tbaa !6
  br label %162

152:                                              ; preds = %148
  store i32 %140, i32* %0, align 4, !tbaa !6
  store i32 %150, i32* %9, align 4, !tbaa !6
  br label %162

153:                                              ; preds = %134
  %154 = icmp sgt i32 %140, %143
  br i1 %154, label %155, label %157

155:                                              ; preds = %153
  %156 = load i32, i32* %0, align 4, !tbaa !6
  store i32 %140, i32* %0, align 4, !tbaa !6
  store i32 %156, i32* %9, align 4, !tbaa !6
  br label %162

157:                                              ; preds = %153
  %158 = icmp sgt i32 %141, %143
  %159 = load i32, i32* %0, align 4, !tbaa !6
  br i1 %158, label %160, label %161

160:                                              ; preds = %157
  store i32 %143, i32* %0, align 4, !tbaa !6
  store i32 %159, i32* %139, align 4, !tbaa !6
  br label %162

161:                                              ; preds = %157
  store i32 %141, i32* %0, align 4, !tbaa !6
  store i32 %159, i32* %138, align 4, !tbaa !6
  br label %162

162:                                              ; preds = %161, %160, %155, %152, %151, %146
  br label %163

163:                                              ; preds = %162, %179
  %164 = phi i32* [ %174, %179 ], [ %12, %162 ]
  %165 = phi i32* [ %171, %179 ], [ %9, %162 ]
  %166 = load i32, i32* %0, align 4, !tbaa !6
  br label %167

167:                                              ; preds = %167, %163
  %168 = phi i32* [ %165, %163 ], [ %171, %167 ]
  %169 = load i32, i32* %168, align 4, !tbaa !6
  %170 = icmp sgt i32 %169, %166
  %171 = getelementptr inbounds i32, i32* %168, i64 1
  br i1 %170, label %167, label %172, !llvm.loop !17

172:                                              ; preds = %167, %172
  %173 = phi i32* [ %174, %172 ], [ %164, %167 ]
  %174 = getelementptr inbounds i32, i32* %173, i64 -1
  %175 = load i32, i32* %174, align 4, !tbaa !6
  %176 = icmp sgt i32 %166, %175
  br i1 %176, label %172, label %177, !llvm.loop !18

177:                                              ; preds = %172
  %178 = icmp ult i32* %168, %174
  br i1 %178, label %179, label %180

179:                                              ; preds = %177
  store i32 %175, i32* %168, align 4, !tbaa !6
  store i32 %169, i32* %174, align 4, !tbaa !6
  br label %163, !llvm.loop !19

180:                                              ; preds = %177
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_T1_(i32* noundef nonnull %168, i32* noundef %12, i64 noundef %135)
  %181 = ptrtoint i32* %168 to i64
  %182 = sub i64 %181, %4
  %183 = icmp sgt i64 %182, 64
  br i1 %183, label %10, label %184, !llvm.loop !20

184:                                              ; preds = %180, %130, %3, %75
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_comp_iterISt7greaterIiEEEEvT_S7_T0_(i32* noundef %0, i32* noundef %1) local_unnamed_addr #3 comdat {
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
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = shl nsw i64 %12, 2
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #6
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %13, align 4, !tbaa !6
  %22 = icmp sgt i32 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %28, %23 ], [ %21, %20 ]
  %25 = phi i32* [ %27, %23 ], [ %13, %20 ]
  %26 = phi i32* [ %25, %23 ], [ %14, %20 ]
  store i32 %24, i32* %26, align 4, !tbaa !6
  %27 = getelementptr inbounds i32, i32* %25, i64 -1
  %28 = load i32, i32* %27, align 4, !tbaa !6
  %29 = icmp sgt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !21

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !6
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !22

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %0, i64 16
  %36 = icmp eq i32* %35, %1
  br i1 %36, label %91, label %37

37:                                               ; preds = %34, %50
  %38 = phi i32* [ %52, %50 ], [ %35, %34 ]
  %39 = load i32, i32* %38, align 4, !tbaa !6
  %40 = getelementptr inbounds i32, i32* %38, i64 -1
  %41 = load i32, i32* %40, align 4, !tbaa !6
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %45 = phi i32* [ %47, %43 ], [ %40, %37 ]
  %46 = phi i32* [ %45, %43 ], [ %38, %37 ]
  store i32 %44, i32* %46, align 4, !tbaa !6
  %47 = getelementptr inbounds i32, i32* %45, i64 -1
  %48 = load i32, i32* %47, align 4, !tbaa !6
  %49 = icmp sgt i32 %39, %48
  br i1 %49, label %43, label %50, !llvm.loop !21

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !6
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !23

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
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = ptrtoint i32* %62 to i64
  %69 = sub i64 %68, %4
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %87, label %71

71:                                               ; preds = %67
  %72 = ashr exact i64 %69, 2
  %73 = getelementptr inbounds i32, i32* %63, i64 2
  %74 = sub nsw i64 0, %72
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = bitcast i32* %75 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #6
  br label %87

77:                                               ; preds = %61
  %78 = load i32, i32* %63, align 4, !tbaa !6
  %79 = icmp sgt i32 %64, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %80
  %81 = phi i32 [ %85, %80 ], [ %78, %77 ]
  %82 = phi i32* [ %84, %80 ], [ %63, %77 ]
  %83 = phi i32* [ %82, %80 ], [ %62, %77 ]
  store i32 %81, i32* %83, align 4, !tbaa !6
  %84 = getelementptr inbounds i32, i32* %82, i64 -1
  %85 = load i32, i32* %84, align 4, !tbaa !6
  %86 = icmp sgt i32 %64, %85
  br i1 %86, label %80, label %87, !llvm.loop !21

87:                                               ; preds = %80, %77, %67, %71
  %88 = phi i32* [ %0, %71 ], [ %0, %67 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !6
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !22

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #4

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_SUM_AREA_RECTANGLES_POSSIBLE_ARRAY_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #6
  ret void
}

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #6 = { nounwind }

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
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12}
!20 = distinct !{!20, !11, !12}
!21 = distinct !{!21, !11, !12}
!22 = distinct !{!22, !11, !12}
!23 = distinct !{!23, !11, !12}
