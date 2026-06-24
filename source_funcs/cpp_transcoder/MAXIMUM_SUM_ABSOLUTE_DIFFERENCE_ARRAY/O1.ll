; ModuleID = 'llvm/cpp_transcoder/MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY/MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY_reprocessed.cpp'
source_filename = "llvm/cpp_transcoder/MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY/MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY_reprocessed.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }

$_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_ = comdat any

$_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_ = comdat any

$_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_ = comdat any

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
  %3 = alloca %"class.std::vector", align 8
  %4 = bitcast %"class.std::vector"* %3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %4) #13
  call void @llvm.memset.p0i8.i64(i8* noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false) #13
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds i32, i32* %0, i64 %5
  %7 = icmp eq i32 %1, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = call i64 @llvm.ctlz.i64(i64 %5, i1 true) #13, !range !5
  %10 = shl nuw nsw i64 %9, 1
  %11 = xor i64 %10, 126
  invoke void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef %0, i32* noundef nonnull %6, i64 noundef %11)
          to label %12 unwind label %27

12:                                               ; preds = %8
  invoke void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* noundef %0, i32* noundef nonnull %6)
          to label %13 unwind label %27

13:                                               ; preds = %12, %2
  %14 = icmp sgt i32 %1, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %13
  %16 = sdiv i32 %1, 2
  %17 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 1
  %18 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 2
  %19 = zext i32 %16 to i64
  br label %29

20:                                               ; preds = %52, %13
  %21 = add i32 %1, -1
  %22 = icmp sgt i32 %1, 1
  br i1 %22, label %23, label %57

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8, !tbaa !6
  %26 = zext i32 %21 to i64
  br label %69

27:                                               ; preds = %12, %8
  %28 = landingpad { i8*, i32 }
          cleanup
  br label %81

29:                                               ; preds = %15, %52
  %30 = phi i64 [ 0, %15 ], [ %53, %52 ]
  %31 = getelementptr inbounds i32, i32* %0, i64 %30
  %32 = load i32*, i32** %17, align 8, !tbaa !11
  %33 = load i32*, i32** %18, align 8, !tbaa !12
  %34 = icmp eq i32* %32, %33
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %31, align 4, !tbaa !13
  store i32 %36, i32* %32, align 4, !tbaa !13
  %37 = getelementptr inbounds i32, i32* %32, i64 1
  store i32* %37, i32** %17, align 8, !tbaa !11
  br label %39

38:                                               ; preds = %29
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %3, i32* %32, i32* noundef nonnull align 4 dereferenceable(4) %31)
          to label %39 unwind label %55

39:                                               ; preds = %35, %38
  %40 = trunc i64 %30 to i32
  %41 = xor i32 %40, -1
  %42 = add i32 %41, %1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %0, i64 %43
  %45 = load i32*, i32** %17, align 8, !tbaa !11
  %46 = load i32*, i32** %18, align 8, !tbaa !12
  %47 = icmp eq i32* %45, %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %39
  %49 = load i32, i32* %44, align 4, !tbaa !13
  store i32 %49, i32* %45, align 4, !tbaa !13
  %50 = getelementptr inbounds i32, i32* %45, i64 1
  store i32* %50, i32** %17, align 8, !tbaa !11
  br label %52

51:                                               ; preds = %39
  invoke void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %3, i32* %45, i32* noundef nonnull align 4 dereferenceable(4) %44)
          to label %52 unwind label %55

52:                                               ; preds = %48, %51
  %53 = add nuw nsw i64 %30, 1
  %54 = icmp eq i64 %53, %19
  br i1 %54, label %20, label %29, !llvm.loop !15

55:                                               ; preds = %51, %38
  %56 = landingpad { i8*, i32 }
          cleanup
  br label %81

57:                                               ; preds = %69, %20
  %58 = phi i32 [ 0, %20 ], [ %79, %69 ]
  %59 = sext i32 %21 to i64
  %60 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8, !tbaa !6
  %62 = getelementptr inbounds i32, i32* %61, i64 %59
  %63 = load i32, i32* %62, align 4, !tbaa !13
  %64 = load i32, i32* %61, align 4, !tbaa !13
  %65 = sub nsw i32 %63, %64
  %66 = call i32 @llvm.abs.i32(i32 %65, i1 true)
  %67 = add nuw nsw i32 %66, %58
  %68 = bitcast i32* %61 to i8*
  call void @_ZdlPv(i8* noundef nonnull %68) #13
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #13
  ret i32 %67

69:                                               ; preds = %23, %69
  %70 = phi i64 [ 0, %23 ], [ %74, %69 ]
  %71 = phi i32 [ 0, %23 ], [ %79, %69 ]
  %72 = getelementptr inbounds i32, i32* %25, i64 %70
  %73 = load i32, i32* %72, align 4, !tbaa !13
  %74 = add nuw nsw i64 %70, 1
  %75 = getelementptr inbounds i32, i32* %25, i64 %74
  %76 = load i32, i32* %75, align 4, !tbaa !13
  %77 = sub nsw i32 %73, %76
  %78 = call i32 @llvm.abs.i32(i32 %77, i1 true)
  %79 = add nuw nsw i32 %78, %71
  %80 = icmp eq i64 %74, %26
  br i1 %80, label %57, label %69, !llvm.loop !18

81:                                               ; preds = %55, %27
  %82 = phi { i8*, i32 } [ %56, %55 ], [ %28, %27 ]
  %83 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %3, i64 0, i32 0, i32 0, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8, !tbaa !6
  %85 = icmp eq i32* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = bitcast i32* %84 to i8*
  call void @_ZdlPv(i8* noundef nonnull %87) #13
  br label %88

88:                                               ; preds = %81, %86
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %4) #13
  resume { i8*, i32 } %82
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly mustprogress nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(i8* noundef) local_unnamed_addr #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef %0, i32* noundef %1, i64 noundef %2) local_unnamed_addr #3 comdat {
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
  %29 = load i32, i32* %28, align 4, !tbaa !13
  %30 = icmp sgt i64 %23, %27
  br i1 %30, label %31, label %46

31:                                               ; preds = %26, %31
  %32 = phi i64 [ %41, %31 ], [ %27, %26 ]
  %33 = shl i64 %32, 1
  %34 = add i64 %33, 2
  %35 = getelementptr inbounds i32, i32* %0, i64 %34
  %36 = or i64 %33, 1
  %37 = getelementptr inbounds i32, i32* %0, i64 %36
  %38 = load i32, i32* %35, align 4, !tbaa !13
  %39 = load i32, i32* %37, align 4, !tbaa !13
  %40 = icmp slt i32 %38, %39
  %41 = select i1 %40, i64 %36, i64 %34
  %42 = getelementptr inbounds i32, i32* %0, i64 %41
  %43 = load i32, i32* %42, align 4, !tbaa !13
  %44 = getelementptr inbounds i32, i32* %0, i64 %32
  store i32 %43, i32* %44, align 4, !tbaa !13
  %45 = icmp slt i64 %41, %23
  br i1 %45, label %31, label %46, !llvm.loop !19

46:                                               ; preds = %31, %26
  %47 = phi i64 [ %27, %26 ], [ %41, %31 ]
  %48 = icmp eq i64 %47, %21
  %49 = select i1 %25, i1 %48, i1 false
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = shl i64 %47, 1
  %52 = or i64 %51, 1
  %53 = getelementptr inbounds i32, i32* %0, i64 %52
  %54 = load i32, i32* %53, align 4, !tbaa !13
  %55 = getelementptr inbounds i32, i32* %0, i64 %47
  store i32 %54, i32* %55, align 4, !tbaa !13
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
  %64 = load i32, i32* %63, align 4, !tbaa !13
  %65 = icmp slt i32 %64, %29
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = getelementptr inbounds i32, i32* %0, i64 %60
  store i32 %64, i32* %67, align 4, !tbaa !13
  %68 = icmp sgt i64 %62, %27
  br i1 %68, label %59, label %69, !llvm.loop !20

69:                                               ; preds = %66, %59, %56
  %70 = phi i64 [ %57, %56 ], [ %60, %59 ], [ %62, %66 ]
  %71 = getelementptr inbounds i32, i32* %0, i64 %70
  store i32 %29, i32* %71, align 4, !tbaa !13
  %72 = icmp eq i64 %27, 0
  %73 = add nsw i64 %27, -1
  %74 = select i1 %72, i64 0, i64 %73
  br i1 %72, label %75, label %26, !llvm.loop !21

75:                                               ; preds = %69, %15
  %76 = icmp sgt i64 %11, 4
  br i1 %76, label %77, label %184

77:                                               ; preds = %75, %130
  %78 = phi i32* [ %79, %130 ], [ %12, %75 ]
  %79 = getelementptr inbounds i32, i32* %78, i64 -1
  %80 = load i32, i32* %79, align 4, !tbaa !13
  %81 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %81, i32* %79, align 4, !tbaa !13
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
  %95 = load i32, i32* %92, align 4, !tbaa !13
  %96 = load i32, i32* %94, align 4, !tbaa !13
  %97 = icmp slt i32 %95, %96
  %98 = select i1 %97, i64 %93, i64 %91
  %99 = getelementptr inbounds i32, i32* %0, i64 %98
  %100 = load i32, i32* %99, align 4, !tbaa !13
  %101 = getelementptr inbounds i32, i32* %0, i64 %89
  store i32 %100, i32* %101, align 4, !tbaa !13
  %102 = icmp slt i64 %98, %86
  br i1 %102, label %88, label %103, !llvm.loop !19

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
  %115 = load i32, i32* %114, align 4, !tbaa !13
  %116 = getelementptr inbounds i32, i32* %0, i64 %104
  store i32 %115, i32* %116, align 4, !tbaa !13
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
  %125 = load i32, i32* %124, align 4, !tbaa !13
  %126 = icmp slt i32 %125, %80
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = getelementptr inbounds i32, i32* %0, i64 %121
  store i32 %125, i32* %128, align 4, !tbaa !13
  %129 = icmp sgt i64 %121, 2
  br i1 %129, label %120, label %130, !llvm.loop !20

130:                                              ; preds = %127, %120, %117
  %131 = phi i64 [ %118, %117 ], [ %121, %120 ], [ %123, %127 ]
  %132 = getelementptr inbounds i32, i32* %0, i64 %131
  store i32 %80, i32* %132, align 4, !tbaa !13
  %133 = icmp sgt i64 %83, 4
  br i1 %133, label %77, label %184, !llvm.loop !22

134:                                              ; preds = %10
  %135 = add nsw i64 %13, -1
  %136 = ashr exact i64 %11, 2
  %137 = sdiv i64 %136, 2
  %138 = getelementptr inbounds i32, i32* %0, i64 %137
  %139 = getelementptr inbounds i32, i32* %12, i64 -1
  %140 = load i32, i32* %9, align 4, !tbaa !13
  %141 = load i32, i32* %138, align 4, !tbaa !13
  %142 = icmp slt i32 %140, %141
  %143 = load i32, i32* %139, align 4, !tbaa !13
  br i1 %142, label %144, label %153

144:                                              ; preds = %134
  %145 = icmp slt i32 %141, %143
  br i1 %145, label %146, label %148

146:                                              ; preds = %144
  %147 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %141, i32* %0, align 4, !tbaa !13
  store i32 %147, i32* %138, align 4, !tbaa !13
  br label %162

148:                                              ; preds = %144
  %149 = icmp slt i32 %140, %143
  %150 = load i32, i32* %0, align 4, !tbaa !13
  br i1 %149, label %151, label %152

151:                                              ; preds = %148
  store i32 %143, i32* %0, align 4, !tbaa !13
  store i32 %150, i32* %139, align 4, !tbaa !13
  br label %162

152:                                              ; preds = %148
  store i32 %140, i32* %0, align 4, !tbaa !13
  store i32 %150, i32* %9, align 4, !tbaa !13
  br label %162

153:                                              ; preds = %134
  %154 = icmp slt i32 %140, %143
  br i1 %154, label %155, label %157

155:                                              ; preds = %153
  %156 = load i32, i32* %0, align 4, !tbaa !13
  store i32 %140, i32* %0, align 4, !tbaa !13
  store i32 %156, i32* %9, align 4, !tbaa !13
  br label %162

157:                                              ; preds = %153
  %158 = icmp slt i32 %141, %143
  %159 = load i32, i32* %0, align 4, !tbaa !13
  br i1 %158, label %160, label %161

160:                                              ; preds = %157
  store i32 %143, i32* %0, align 4, !tbaa !13
  store i32 %159, i32* %139, align 4, !tbaa !13
  br label %162

161:                                              ; preds = %157
  store i32 %141, i32* %0, align 4, !tbaa !13
  store i32 %159, i32* %138, align 4, !tbaa !13
  br label %162

162:                                              ; preds = %161, %160, %155, %152, %151, %146
  br label %163

163:                                              ; preds = %162, %179
  %164 = phi i32* [ %174, %179 ], [ %12, %162 ]
  %165 = phi i32* [ %171, %179 ], [ %9, %162 ]
  %166 = load i32, i32* %0, align 4, !tbaa !13
  br label %167

167:                                              ; preds = %167, %163
  %168 = phi i32* [ %165, %163 ], [ %171, %167 ]
  %169 = load i32, i32* %168, align 4, !tbaa !13
  %170 = icmp slt i32 %169, %166
  %171 = getelementptr inbounds i32, i32* %168, i64 1
  br i1 %170, label %167, label %172, !llvm.loop !23

172:                                              ; preds = %167, %172
  %173 = phi i32* [ %174, %172 ], [ %164, %167 ]
  %174 = getelementptr inbounds i32, i32* %173, i64 -1
  %175 = load i32, i32* %174, align 4, !tbaa !13
  %176 = icmp slt i32 %166, %175
  br i1 %176, label %172, label %177, !llvm.loop !24

177:                                              ; preds = %172
  %178 = icmp ult i32* %168, %174
  br i1 %178, label %179, label %180

179:                                              ; preds = %177
  store i32 %175, i32* %168, align 4, !tbaa !13
  store i32 %169, i32* %174, align 4, !tbaa !13
  br label %163, !llvm.loop !25

180:                                              ; preds = %177
  call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(i32* noundef nonnull %168, i32* noundef %12, i64 noundef %135)
  %181 = ptrtoint i32* %168 to i64
  %182 = sub i64 %181, %4
  %183 = icmp sgt i64 %182, 64
  br i1 %183, label %10, label %184, !llvm.loop !26

184:                                              ; preds = %180, %130, %3, %75
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(i32* noundef %0, i32* noundef %1) local_unnamed_addr #6 comdat {
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
  %15 = load i32, i32* %14, align 4, !tbaa !13
  %16 = load i32, i32* %0, align 4, !tbaa !13
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = shl nsw i64 %12, 2
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %10, i8* nonnull align 4 %8, i64 %19, i1 false) #13
  br label %30

20:                                               ; preds = %11
  %21 = load i32, i32* %13, align 4, !tbaa !13
  %22 = icmp slt i32 %15, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %20, %23
  %24 = phi i32 [ %28, %23 ], [ %21, %20 ]
  %25 = phi i32* [ %27, %23 ], [ %13, %20 ]
  %26 = phi i32* [ %25, %23 ], [ %14, %20 ]
  store i32 %24, i32* %26, align 4, !tbaa !13
  %27 = getelementptr inbounds i32, i32* %25, i64 -1
  %28 = load i32, i32* %27, align 4, !tbaa !13
  %29 = icmp slt i32 %15, %28
  br i1 %29, label %23, label %30, !llvm.loop !27

30:                                               ; preds = %23, %20, %18
  %31 = phi i32* [ %0, %18 ], [ %14, %20 ], [ %25, %23 ]
  store i32 %15, i32* %31, align 4, !tbaa !13
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %11, !llvm.loop !28

34:                                               ; preds = %30
  %35 = getelementptr inbounds i32, i32* %0, i64 16
  %36 = icmp eq i32* %35, %1
  br i1 %36, label %91, label %37

37:                                               ; preds = %34, %50
  %38 = phi i32* [ %52, %50 ], [ %35, %34 ]
  %39 = load i32, i32* %38, align 4, !tbaa !13
  %40 = getelementptr inbounds i32, i32* %38, i64 -1
  %41 = load i32, i32* %40, align 4, !tbaa !13
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %37, %43
  %44 = phi i32 [ %48, %43 ], [ %41, %37 ]
  %45 = phi i32* [ %47, %43 ], [ %40, %37 ]
  %46 = phi i32* [ %45, %43 ], [ %38, %37 ]
  store i32 %44, i32* %46, align 4, !tbaa !13
  %47 = getelementptr inbounds i32, i32* %45, i64 -1
  %48 = load i32, i32* %47, align 4, !tbaa !13
  %49 = icmp slt i32 %39, %48
  br i1 %49, label %43, label %50, !llvm.loop !27

50:                                               ; preds = %43, %37
  %51 = phi i32* [ %38, %37 ], [ %45, %43 ]
  store i32 %39, i32* %51, align 4, !tbaa !13
  %52 = getelementptr inbounds i32, i32* %38, i64 1
  %53 = icmp eq i32* %52, %1
  br i1 %53, label %91, label %37, !llvm.loop !29

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
  %64 = load i32, i32* %62, align 4, !tbaa !13
  %65 = load i32, i32* %0, align 4, !tbaa !13
  %66 = icmp slt i32 %64, %65
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
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %76, i8* nonnull align 4 %60, i64 %69, i1 false) #13
  br label %87

77:                                               ; preds = %61
  %78 = load i32, i32* %63, align 4, !tbaa !13
  %79 = icmp slt i32 %64, %78
  br i1 %79, label %80, label %87

80:                                               ; preds = %77, %80
  %81 = phi i32 [ %85, %80 ], [ %78, %77 ]
  %82 = phi i32* [ %84, %80 ], [ %63, %77 ]
  %83 = phi i32* [ %82, %80 ], [ %62, %77 ]
  store i32 %81, i32* %83, align 4, !tbaa !13
  %84 = getelementptr inbounds i32, i32* %82, i64 -1
  %85 = load i32, i32* %84, align 4, !tbaa !13
  %86 = icmp slt i32 %64, %85
  br i1 %86, label %80, label %87, !llvm.loop !27

87:                                               ; preds = %80, %77, %67, %71
  %88 = phi i32* [ %0, %71 ], [ %0, %67 ], [ %62, %77 ], [ %82, %80 ]
  store i32 %64, i32* %88, align 4, !tbaa !13
  %89 = getelementptr inbounds i32, i32* %62, i64 1
  %90 = icmp eq i32* %89, %1
  br i1 %90, label %91, label %61, !llvm.loop !28

91:                                               ; preds = %87, %50, %56, %54, %34
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #8

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%"class.std::vector"* noundef nonnull align 8 dereferenceable(24) %0, i32* %1, i32* noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
  %4 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8, !tbaa !11
  %6 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8, !tbaa !6
  %8 = ptrtoint i32* %5 to i64
  %9 = ptrtoint i32* %7 to i64
  %10 = sub i64 %8, %9
  %11 = ashr exact i64 %10, 2
  %12 = icmp eq i64 %10, 9223372036854775804
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  call void @_ZSt20__throw_length_errorPKc(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #14
  unreachable

14:                                               ; preds = %3
  %15 = icmp eq i64 %10, 0
  %16 = select i1 %15, i64 1, i64 %11
  %17 = add nsw i64 %16, %11
  %18 = icmp ult i64 %17, %11
  %19 = icmp ugt i64 %17, 2305843009213693951
  %20 = or i1 %18, %19
  %21 = select i1 %20, i64 2305843009213693951, i64 %17
  %22 = ptrtoint i32* %1 to i64
  %23 = sub i64 %22, %9
  %24 = ashr exact i64 %23, 2
  %25 = icmp eq i64 %21, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %14
  %27 = icmp ugt i64 %21, 2305843009213693951
  br i1 %27, label %28, label %32, !prof !30

28:                                               ; preds = %26
  %29 = icmp ugt i64 %21, 4611686018427387903
  br i1 %29, label %30, label %31

30:                                               ; preds = %28
  call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

31:                                               ; preds = %28
  call void @_ZSt17__throw_bad_allocv() #14
  unreachable

32:                                               ; preds = %26
  %33 = shl i64 %21, 2
  %34 = call noalias noundef nonnull i8* @_Znwm(i64 noundef %33) #15
  %35 = bitcast i8* %34 to i32*
  br label %36

36:                                               ; preds = %14, %32
  %37 = phi i32* [ %35, %32 ], [ null, %14 ]
  %38 = getelementptr inbounds i32, i32* %37, i64 %24
  %39 = load i32, i32* %2, align 4, !tbaa !13
  store i32 %39, i32* %38, align 4, !tbaa !13
  %40 = icmp sgt i64 %23, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = bitcast i32* %37 to i8*
  %43 = bitcast i32* %7 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 %23, i1 false) #13
  br label %44

44:                                               ; preds = %36, %41
  %45 = getelementptr inbounds i32, i32* %38, i64 1
  %46 = sub i64 %8, %22
  %47 = icmp sgt i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = bitcast i32* %45 to i8*
  %50 = bitcast i32* %1 to i8*
  call void @llvm.memmove.p0i8.p0i8.i64(i8* nonnull align 4 %49, i8* align 4 %50, i64 %46, i1 false) #13
  br label %51

51:                                               ; preds = %44, %48
  %52 = icmp eq i32* %7, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %51
  %54 = bitcast i32* %7 to i8*
  call void @_ZdlPv(i8* noundef nonnull %54) #13
  br label %55

55:                                               ; preds = %51, %53
  %56 = getelementptr inbounds %"class.std::vector", %"class.std::vector"* %0, i64 0, i32 0, i32 0, i32 0, i32 2
  %57 = ashr exact i64 %46, 2
  %58 = getelementptr inbounds i32, i32* %45, i64 %57
  store i32* %37, i32** %6, align 8, !tbaa !6
  store i32* %58, i32** %4, align 8, !tbaa !11
  %59 = getelementptr inbounds i32, i32* %37, i64 %21
  store i32* %59, i32** %56, align 8, !tbaa !12
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(i8* noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull i8* @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_MAXIMUM_SUM_ABSOLUTE_DIFFERENCE_ARRAY_reprocessed.cpp() #3 section ".text.startup" {
  call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #13
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #11

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { argmemonly mustprogress nofree nounwind willreturn }
attributes #9 = { noreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
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
!6 = !{!7, !8, i64 0}
!7 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !8, i64 0, !8, i64 8, !8, i64 16}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!7, !8, i64 8}
!12 = !{!7, !8, i64 16}
!13 = !{!14, !14, i64 0}
!14 = !{!"int", !9, i64 0}
!15 = distinct !{!15, !16, !17}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !16, !17}
!19 = distinct !{!19, !16, !17}
!20 = distinct !{!20, !16, !17}
!21 = distinct !{!21, !16, !17}
!22 = distinct !{!22, !16, !17}
!23 = distinct !{!23, !16, !17}
!24 = distinct !{!24, !16, !17}
!25 = distinct !{!25, !16, !17}
!26 = distinct !{!26, !16, !17}
!27 = distinct !{!27, !16, !17}
!28 = distinct !{!28, !16, !17}
!29 = distinct !{!29, !16, !17}
!30 = !{!"branch_weights", i32 1, i32 2000}
