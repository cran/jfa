// Generated by rstantools.  Do not edit by hand.

/*
    jfa is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    jfa is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with jfa.  If not, see <http://www.gnu.org/licenses/>.
*/
#ifndef MODELS_HPP
#define MODELS_HPP
#define STAN__SERVICES__COMMAND_HPP
#ifndef USE_STANC3
#define USE_STANC3
#endif
#include <rstan/rstaninc.hpp>
// Code generated by stanc v2.32.2
#include <stan/model/model_header.hpp>
namespace model_pp_error_namespace {
using stan::model::model_base_crtp;
using namespace stan::math;
stan::math::profile_map profiles__;
static constexpr std::array<const char*, 57> locations_array__ =
  {" (found before start of program)",
  " (in 'pp_error', line 35, column 2 to column 29)",
  " (in 'pp_error', line 36, column 2 to column 19)",
  " (in 'pp_error', line 37, column 2 to column 38)",
  " (in 'pp_error', line 56, column 4 to column 29)",
  " (in 'pp_error', line 55, column 32 to line 57, column 3)",
  " (in 'pp_error', line 55, column 9 to line 57, column 3)",
  " (in 'pp_error', line 54, column 4 to column 28)",
  " (in 'pp_error', line 53, column 26 to line 55, column 3)",
  " (in 'pp_error', line 53, column 9 to line 57, column 3)",
  " (in 'pp_error', line 52, column 4 to column 33)",
  " (in 'pp_error', line 51, column 22 to line 53, column 3)",
  " (in 'pp_error', line 51, column 9 to line 57, column 3)",
  " (in 'pp_error', line 50, column 4 to column 30)",
  " (in 'pp_error', line 49, column 27 to line 51, column 3)",
  " (in 'pp_error', line 49, column 9 to line 57, column 3)",
  " (in 'pp_error', line 48, column 4 to column 31)",
  " (in 'pp_error', line 47, column 28 to line 49, column 3)",
  " (in 'pp_error', line 47, column 9 to line 57, column 3)",
  " (in 'pp_error', line 46, column 4 to column 30)",
  " (in 'pp_error', line 45, column 27 to line 47, column 3)",
  " (in 'pp_error', line 45, column 9 to line 57, column 3)",
  " (in 'pp_error', line 44, column 4 to column 29)",
  " (in 'pp_error', line 43, column 26 to line 45, column 3)",
  " (in 'pp_error', line 43, column 9 to line 57, column 3)",
  " (in 'pp_error', line 42, column 4 to column 28)",
  " (in 'pp_error', line 41, column 18 to line 43, column 3)",
  " (in 'pp_error', line 41, column 2 to line 57, column 3)",
  " (in 'pp_error', line 58, column 2 to column 22)",
  " (in 'pp_error', line 60, column 2 to column 43)",
  " (in 'pp_error', line 66, column 6 to column 43)",
  " (in 'pp_error', line 65, column 35 to line 67, column 5)",
  " (in 'pp_error', line 65, column 11 to line 67, column 5)",
  " (in 'pp_error', line 64, column 6 to column 31)",
  " (in 'pp_error', line 63, column 29 to line 65, column 5)",
  " (in 'pp_error', line 63, column 4 to line 67, column 5)",
  " (in 'pp_error', line 62, column 22 to line 68, column 3)",
  " (in 'pp_error', line 62, column 2 to line 68, column 3)",
  " (in 'pp_error', line 17, column 2 to column 17)",
  " (in 'pp_error', line 18, column 8 to column 9)",
  " (in 'pp_error', line 18, column 2 to column 26)",
  " (in 'pp_error', line 19, column 8 to column 9)",
  " (in 'pp_error', line 19, column 2 to column 26)",
  " (in 'pp_error', line 20, column 2 to column 22)",
  " (in 'pp_error', line 21, column 2 to column 21)",
  " (in 'pp_error', line 22, column 2 to column 17)",
  " (in 'pp_error', line 23, column 2 to column 18)",
  " (in 'pp_error', line 24, column 2 to column 19)",
  " (in 'pp_error', line 25, column 2 to column 20)",
  " (in 'pp_error', line 26, column 2 to column 19)",
  " (in 'pp_error', line 27, column 2 to column 14)",
  " (in 'pp_error', line 28, column 2 to column 18)",
  " (in 'pp_error', line 29, column 2 to column 24)",
  " (in 'pp_error', line 30, column 2 to column 21)",
  " (in 'pp_error', line 31, column 2 to column 26)",
  " (in 'pp_error', line 32, column 2 to column 25)",
  " (in 'pp_error', line 37, column 27 to column 28)"};
#include <stan_meta_header.hpp>
class model_pp_error final : public model_base_crtp<model_pp_error> {
private:
  int S;
  std::vector<int> n;
  std::vector<int> k;
  double alpha;
  double beta;
  int beta_prior;
  int gamma_prior;
  int normal_prior;
  int uniform_prior;
  int cauchy_prior;
  int t_prior;
  int chisq_prior;
  int exponential_prior;
  int use_likelihood;
  int binomial_likelihood;
  int poisson_likelihood;
public:
  ~model_pp_error() {}
  model_pp_error(stan::io::var_context& context__, unsigned int
                 random_seed__ = 0, std::ostream* pstream__ = nullptr)
      : model_base_crtp(0) {
    int current_statement__ = 0;
    using local_scalar_t__ = double;
    boost::ecuyer1988 base_rng__ =
      stan::services::util::create_rng(random_seed__, 0);
    // suppress unused var warning
    (void) base_rng__;
    static constexpr const char* function__ =
      "model_pp_error_namespace::model_pp_error";
    // suppress unused var warning
    (void) function__;
    local_scalar_t__ DUMMY_VAR__(std::numeric_limits<double>::quiet_NaN());
    // suppress unused var warning
    (void) DUMMY_VAR__;
    try {
      int pos__ = std::numeric_limits<int>::min();
      pos__ = 1;
      current_statement__ = 38;
      context__.validate_dims("data initialization", "S", "int",
        std::vector<size_t>{});
      S = std::numeric_limits<int>::min();
      current_statement__ = 38;
      S = context__.vals_i("S")[(1 - 1)];
      current_statement__ = 38;
      stan::math::check_greater_or_equal(function__, "S", S, 1);
      current_statement__ = 39;
      stan::math::validate_non_negative_index("n", "S", S);
      current_statement__ = 40;
      context__.validate_dims("data initialization", "n", "int",
        std::vector<size_t>{static_cast<size_t>(S)});
      n = std::vector<int>(S, std::numeric_limits<int>::min());
      current_statement__ = 40;
      n = context__.vals_i("n");
      current_statement__ = 40;
      stan::math::check_greater_or_equal(function__, "n", n, 0);
      current_statement__ = 41;
      stan::math::validate_non_negative_index("k", "S", S);
      current_statement__ = 42;
      context__.validate_dims("data initialization", "k", "int",
        std::vector<size_t>{static_cast<size_t>(S)});
      k = std::vector<int>(S, std::numeric_limits<int>::min());
      current_statement__ = 42;
      k = context__.vals_i("k");
      current_statement__ = 42;
      stan::math::check_greater_or_equal(function__, "k", k, 0);
      current_statement__ = 43;
      context__.validate_dims("data initialization", "alpha", "double",
        std::vector<size_t>{});
      alpha = std::numeric_limits<double>::quiet_NaN();
      current_statement__ = 43;
      alpha = context__.vals_r("alpha")[(1 - 1)];
      current_statement__ = 43;
      stan::math::check_greater_or_equal(function__, "alpha", alpha, 0);
      current_statement__ = 44;
      context__.validate_dims("data initialization", "beta", "double",
        std::vector<size_t>{});
      beta = std::numeric_limits<double>::quiet_NaN();
      current_statement__ = 44;
      beta = context__.vals_r("beta")[(1 - 1)];
      current_statement__ = 44;
      stan::math::check_greater_or_equal(function__, "beta", beta, 0);
      current_statement__ = 45;
      context__.validate_dims("data initialization", "beta_prior", "int",
        std::vector<size_t>{});
      beta_prior = std::numeric_limits<int>::min();
      current_statement__ = 45;
      beta_prior = context__.vals_i("beta_prior")[(1 - 1)];
      current_statement__ = 46;
      context__.validate_dims("data initialization", "gamma_prior", "int",
        std::vector<size_t>{});
      gamma_prior = std::numeric_limits<int>::min();
      current_statement__ = 46;
      gamma_prior = context__.vals_i("gamma_prior")[(1 - 1)];
      current_statement__ = 47;
      context__.validate_dims("data initialization", "normal_prior", "int",
        std::vector<size_t>{});
      normal_prior = std::numeric_limits<int>::min();
      current_statement__ = 47;
      normal_prior = context__.vals_i("normal_prior")[(1 - 1)];
      current_statement__ = 48;
      context__.validate_dims("data initialization", "uniform_prior", "int",
        std::vector<size_t>{});
      uniform_prior = std::numeric_limits<int>::min();
      current_statement__ = 48;
      uniform_prior = context__.vals_i("uniform_prior")[(1 - 1)];
      current_statement__ = 49;
      context__.validate_dims("data initialization", "cauchy_prior", "int",
        std::vector<size_t>{});
      cauchy_prior = std::numeric_limits<int>::min();
      current_statement__ = 49;
      cauchy_prior = context__.vals_i("cauchy_prior")[(1 - 1)];
      current_statement__ = 50;
      context__.validate_dims("data initialization", "t_prior", "int",
        std::vector<size_t>{});
      t_prior = std::numeric_limits<int>::min();
      current_statement__ = 50;
      t_prior = context__.vals_i("t_prior")[(1 - 1)];
      current_statement__ = 51;
      context__.validate_dims("data initialization", "chisq_prior", "int",
        std::vector<size_t>{});
      chisq_prior = std::numeric_limits<int>::min();
      current_statement__ = 51;
      chisq_prior = context__.vals_i("chisq_prior")[(1 - 1)];
      current_statement__ = 52;
      context__.validate_dims("data initialization", "exponential_prior",
        "int", std::vector<size_t>{});
      exponential_prior = std::numeric_limits<int>::min();
      current_statement__ = 52;
      exponential_prior = context__.vals_i("exponential_prior")[(1 - 1)];
      current_statement__ = 53;
      context__.validate_dims("data initialization", "use_likelihood", "int",
        std::vector<size_t>{});
      use_likelihood = std::numeric_limits<int>::min();
      current_statement__ = 53;
      use_likelihood = context__.vals_i("use_likelihood")[(1 - 1)];
      current_statement__ = 54;
      context__.validate_dims("data initialization", "binomial_likelihood",
        "int", std::vector<size_t>{});
      binomial_likelihood = std::numeric_limits<int>::min();
      current_statement__ = 54;
      binomial_likelihood = context__.vals_i("binomial_likelihood")[(1 - 1)];
      current_statement__ = 55;
      context__.validate_dims("data initialization", "poisson_likelihood",
        "int", std::vector<size_t>{});
      poisson_likelihood = std::numeric_limits<int>::min();
      current_statement__ = 55;
      poisson_likelihood = context__.vals_i("poisson_likelihood")[(1 - 1)];
      current_statement__ = 56;
      stan::math::validate_non_negative_index("theta_s", "S", S);
    } catch (const std::exception& e) {
      stan::lang::rethrow_located(e, locations_array__[current_statement__]);
    }
    num_params_r__ = 1 + 1 + S;
  }
  inline std::string model_name() const final {
    return "model_pp_error";
  }
  inline std::vector<std::string> model_compile_info() const noexcept {
    return std::vector<std::string>{"stanc_version = stanc3 v2.32.2",
             "stancflags = --allow-undefined"};
  }
  template <bool propto__, bool jacobian__, typename VecR, typename VecI,
            stan::require_vector_like_t<VecR>* = nullptr,
            stan::require_vector_like_vt<std::is_integral, VecI>* = nullptr>
  inline stan::scalar_type_t<VecR>
  log_prob_impl(VecR& params_r__, VecI& params_i__, std::ostream*
                pstream__ = nullptr) const {
    using T__ = stan::scalar_type_t<VecR>;
    using local_scalar_t__ = T__;
    T__ lp__(0.0);
    stan::math::accumulator<T__> lp_accum__;
    stan::io::deserializer<local_scalar_t__> in__(params_r__, params_i__);
    int current_statement__ = 0;
    local_scalar_t__ DUMMY_VAR__(std::numeric_limits<double>::quiet_NaN());
    // suppress unused var warning
    (void) DUMMY_VAR__;
    static constexpr const char* function__ =
      "model_pp_error_namespace::log_prob";
    // suppress unused var warning
    (void) function__;
    try {
      local_scalar_t__ phi = DUMMY_VAR__;
      current_statement__ = 1;
      phi = in__.template read_constrain_lub<local_scalar_t__, jacobian__>(0,
              1, lp__);
      local_scalar_t__ nu = DUMMY_VAR__;
      current_statement__ = 2;
      nu = in__.template read_constrain_lb<local_scalar_t__, jacobian__>(1,
             lp__);
      Eigen::Matrix<local_scalar_t__,-1,1> theta_s =
        Eigen::Matrix<local_scalar_t__,-1,1>::Constant(S, DUMMY_VAR__);
      current_statement__ = 3;
      theta_s = in__.template read_constrain_lub<
                  Eigen::Matrix<local_scalar_t__,-1,1>, jacobian__>(0, 1,
                  lp__, S);
      {
        current_statement__ = 27;
        if (beta_prior) {
          current_statement__ = 25;
          lp_accum__.add(stan::math::beta_lpdf<propto__>(phi, alpha, beta));
        } else {
          current_statement__ = 24;
          if (gamma_prior) {
            current_statement__ = 22;
            lp_accum__.add(stan::math::gamma_lpdf<propto__>(phi, alpha, beta));
          } else {
            current_statement__ = 21;
            if (normal_prior) {
              current_statement__ = 19;
              lp_accum__.add(stan::math::normal_lpdf<propto__>(phi, alpha,
                               beta));
            } else {
              current_statement__ = 18;
              if (uniform_prior) {
                current_statement__ = 16;
                lp_accum__.add(stan::math::uniform_lpdf<propto__>(phi, alpha,
                                 beta));
              } else {
                current_statement__ = 15;
                if (cauchy_prior) {
                  current_statement__ = 13;
                  lp_accum__.add(stan::math::cauchy_lpdf<propto__>(phi,
                                   alpha, beta));
                } else {
                  current_statement__ = 12;
                  if (t_prior) {
                    current_statement__ = 10;
                    lp_accum__.add(stan::math::student_t_lpdf<propto__>(phi,
                                     alpha, 0, 1));
                  } else {
                    current_statement__ = 9;
                    if (chisq_prior) {
                      current_statement__ = 7;
                      lp_accum__.add(stan::math::chi_square_lpdf<propto__>(
                                       phi, alpha));
                    } else {
                      current_statement__ = 6;
                      if (exponential_prior) {
                        current_statement__ = 4;
                        lp_accum__.add(stan::math::exponential_lpdf<
                                         propto__>(phi, alpha));
                      }
                    }
                  }
                }
              }
            }
          }
        }
        current_statement__ = 28;
        lp_accum__.add(stan::math::pareto_lpdf<propto__>(nu, 1, 1.5));
        current_statement__ = 29;
        lp_accum__.add(stan::math::beta_lpdf<propto__>(theta_s, (phi * nu),
                         ((1 - phi) * nu)));
        current_statement__ = 37;
        if (use_likelihood) {
          current_statement__ = 35;
          if (binomial_likelihood) {
            current_statement__ = 33;
            lp_accum__.add(stan::math::binomial_lpmf<propto__>(k, n, theta_s));
          } else {
            current_statement__ = 32;
            if (poisson_likelihood) {
              current_statement__ = 30;
              lp_accum__.add(stan::math::poisson_lpmf<propto__>(k,
                               stan::math::elt_multiply(
                                 stan::math::to_vector(n), theta_s)));
            }
          }
        }
      }
    } catch (const std::exception& e) {
      stan::lang::rethrow_located(e, locations_array__[current_statement__]);
    }
    lp_accum__.add(lp__);
    return lp_accum__.sum();
  }
  template <typename RNG, typename VecR, typename VecI, typename VecVar,
            stan::require_vector_like_vt<std::is_floating_point,
            VecR>* = nullptr, stan::require_vector_like_vt<std::is_integral,
            VecI>* = nullptr, stan::require_vector_vt<std::is_floating_point,
            VecVar>* = nullptr>
  inline void
  write_array_impl(RNG& base_rng__, VecR& params_r__, VecI& params_i__,
                   VecVar& vars__, const bool
                   emit_transformed_parameters__ = true, const bool
                   emit_generated_quantities__ = true, std::ostream*
                   pstream__ = nullptr) const {
    using local_scalar_t__ = double;
    stan::io::deserializer<local_scalar_t__> in__(params_r__, params_i__);
    stan::io::serializer<local_scalar_t__> out__(vars__);
    static constexpr bool propto__ = true;
    // suppress unused var warning
    (void) propto__;
    double lp__ = 0.0;
    // suppress unused var warning
    (void) lp__;
    int current_statement__ = 0;
    stan::math::accumulator<double> lp_accum__;
    local_scalar_t__ DUMMY_VAR__(std::numeric_limits<double>::quiet_NaN());
    // suppress unused var warning
    (void) DUMMY_VAR__;
    constexpr bool jacobian__ = false;
    static constexpr const char* function__ =
      "model_pp_error_namespace::write_array";
    // suppress unused var warning
    (void) function__;
    try {
      double phi = std::numeric_limits<double>::quiet_NaN();
      current_statement__ = 1;
      phi = in__.template read_constrain_lub<local_scalar_t__, jacobian__>(0,
              1, lp__);
      double nu = std::numeric_limits<double>::quiet_NaN();
      current_statement__ = 2;
      nu = in__.template read_constrain_lb<local_scalar_t__, jacobian__>(1,
             lp__);
      Eigen::Matrix<double,-1,1> theta_s =
        Eigen::Matrix<double,-1,1>::Constant(S,
          std::numeric_limits<double>::quiet_NaN());
      current_statement__ = 3;
      theta_s = in__.template read_constrain_lub<
                  Eigen::Matrix<local_scalar_t__,-1,1>, jacobian__>(0, 1,
                  lp__, S);
      out__.write(phi);
      out__.write(nu);
      out__.write(theta_s);
      if (stan::math::logical_negation(
            (stan::math::primitive_value(emit_transformed_parameters__) ||
            stan::math::primitive_value(emit_generated_quantities__)))) {
        return ;
      }
      if (stan::math::logical_negation(emit_generated_quantities__)) {
        return ;
      }
    } catch (const std::exception& e) {
      stan::lang::rethrow_located(e, locations_array__[current_statement__]);
    }
  }
  template <typename VecVar, typename VecI,
            stan::require_vector_t<VecVar>* = nullptr,
            stan::require_vector_like_vt<std::is_integral, VecI>* = nullptr>
  inline void
  unconstrain_array_impl(const VecVar& params_r__, const VecI& params_i__,
                         VecVar& vars__, std::ostream* pstream__ = nullptr) const {
    using local_scalar_t__ = double;
    stan::io::deserializer<local_scalar_t__> in__(params_r__, params_i__);
    stan::io::serializer<local_scalar_t__> out__(vars__);
    int current_statement__ = 0;
    local_scalar_t__ DUMMY_VAR__(std::numeric_limits<double>::quiet_NaN());
    // suppress unused var warning
    (void) DUMMY_VAR__;
    try {
      int pos__ = std::numeric_limits<int>::min();
      pos__ = 1;
      local_scalar_t__ phi = DUMMY_VAR__;
      current_statement__ = 1;
      phi = in__.read<local_scalar_t__>();
      out__.write_free_lub(0, 1, phi);
      local_scalar_t__ nu = DUMMY_VAR__;
      current_statement__ = 2;
      nu = in__.read<local_scalar_t__>();
      out__.write_free_lb(1, nu);
      Eigen::Matrix<local_scalar_t__,-1,1> theta_s =
        Eigen::Matrix<local_scalar_t__,-1,1>::Constant(S, DUMMY_VAR__);
      current_statement__ = 3;
      stan::model::assign(theta_s,
        in__.read<Eigen::Matrix<local_scalar_t__,-1,1>>(S),
        "assigning variable theta_s");
      out__.write_free_lub(0, 1, theta_s);
    } catch (const std::exception& e) {
      stan::lang::rethrow_located(e, locations_array__[current_statement__]);
    }
  }
  template <typename VecVar, stan::require_vector_t<VecVar>* = nullptr>
  inline void
  transform_inits_impl(const stan::io::var_context& context__, VecVar&
                       vars__, std::ostream* pstream__ = nullptr) const {
    using local_scalar_t__ = double;
    stan::io::serializer<local_scalar_t__> out__(vars__);
    int current_statement__ = 0;
    local_scalar_t__ DUMMY_VAR__(std::numeric_limits<double>::quiet_NaN());
    // suppress unused var warning
    (void) DUMMY_VAR__;
    try {
      current_statement__ = 1;
      context__.validate_dims("parameter initialization", "phi", "double",
        std::vector<size_t>{});
      current_statement__ = 2;
      context__.validate_dims("parameter initialization", "nu", "double",
        std::vector<size_t>{});
      current_statement__ = 3;
      context__.validate_dims("parameter initialization", "theta_s",
        "double", std::vector<size_t>{static_cast<size_t>(S)});
      int pos__ = std::numeric_limits<int>::min();
      pos__ = 1;
      local_scalar_t__ phi = DUMMY_VAR__;
      current_statement__ = 1;
      phi = context__.vals_r("phi")[(1 - 1)];
      out__.write_free_lub(0, 1, phi);
      local_scalar_t__ nu = DUMMY_VAR__;
      current_statement__ = 2;
      nu = context__.vals_r("nu")[(1 - 1)];
      out__.write_free_lb(1, nu);
      Eigen::Matrix<local_scalar_t__,-1,1> theta_s =
        Eigen::Matrix<local_scalar_t__,-1,1>::Constant(S, DUMMY_VAR__);
      {
        std::vector<local_scalar_t__> theta_s_flat__;
        current_statement__ = 3;
        theta_s_flat__ = context__.vals_r("theta_s");
        current_statement__ = 3;
        pos__ = 1;
        current_statement__ = 3;
        for (int sym1__ = 1; sym1__ <= S; ++sym1__) {
          current_statement__ = 3;
          stan::model::assign(theta_s, theta_s_flat__[(pos__ - 1)],
            "assigning variable theta_s", stan::model::index_uni(sym1__));
          current_statement__ = 3;
          pos__ = (pos__ + 1);
        }
      }
      out__.write_free_lub(0, 1, theta_s);
    } catch (const std::exception& e) {
      stan::lang::rethrow_located(e, locations_array__[current_statement__]);
    }
  }
  inline void
  get_param_names(std::vector<std::string>& names__, const bool
                  emit_transformed_parameters__ = true, const bool
                  emit_generated_quantities__ = true) const {
    names__ = std::vector<std::string>{"phi", "nu", "theta_s"};
    if (emit_transformed_parameters__) {}
    if (emit_generated_quantities__) {}
  }
  inline void
  get_dims(std::vector<std::vector<size_t>>& dimss__, const bool
           emit_transformed_parameters__ = true, const bool
           emit_generated_quantities__ = true) const {
    dimss__ = std::vector<std::vector<size_t>>{std::vector<size_t>{},
                std::vector<size_t>{},
                std::vector<size_t>{static_cast<size_t>(S)}};
    if (emit_transformed_parameters__) {}
    if (emit_generated_quantities__) {}
  }
  inline void
  constrained_param_names(std::vector<std::string>& param_names__, bool
                          emit_transformed_parameters__ = true, bool
                          emit_generated_quantities__ = true) const final {
    param_names__.emplace_back(std::string() + "phi");
    param_names__.emplace_back(std::string() + "nu");
    for (int sym1__ = 1; sym1__ <= S; ++sym1__) {
      param_names__.emplace_back(std::string() + "theta_s" + '.' +
        std::to_string(sym1__));
    }
    if (emit_transformed_parameters__) {}
    if (emit_generated_quantities__) {}
  }
  inline void
  unconstrained_param_names(std::vector<std::string>& param_names__, bool
                            emit_transformed_parameters__ = true, bool
                            emit_generated_quantities__ = true) const final {
    param_names__.emplace_back(std::string() + "phi");
    param_names__.emplace_back(std::string() + "nu");
    for (int sym1__ = 1; sym1__ <= S; ++sym1__) {
      param_names__.emplace_back(std::string() + "theta_s" + '.' +
        std::to_string(sym1__));
    }
    if (emit_transformed_parameters__) {}
    if (emit_generated_quantities__) {}
  }
  inline std::string get_constrained_sizedtypes() const {
    return std::string("[{\"name\":\"phi\",\"type\":{\"name\":\"real\"},\"block\":\"parameters\"},{\"name\":\"nu\",\"type\":{\"name\":\"real\"},\"block\":\"parameters\"},{\"name\":\"theta_s\",\"type\":{\"name\":\"vector\",\"length\":" + std::to_string(S) + "},\"block\":\"parameters\"}]");
  }
  inline std::string get_unconstrained_sizedtypes() const {
    return std::string("[{\"name\":\"phi\",\"type\":{\"name\":\"real\"},\"block\":\"parameters\"},{\"name\":\"nu\",\"type\":{\"name\":\"real\"},\"block\":\"parameters\"},{\"name\":\"theta_s\",\"type\":{\"name\":\"vector\",\"length\":" + std::to_string(S) + "},\"block\":\"parameters\"}]");
  }
  // Begin method overload boilerplate
  template <typename RNG> inline void
  write_array(RNG& base_rng, Eigen::Matrix<double,-1,1>& params_r,
              Eigen::Matrix<double,-1,1>& vars, const bool
              emit_transformed_parameters = true, const bool
              emit_generated_quantities = true, std::ostream*
              pstream = nullptr) const {
    const size_t num_params__ = ((1 + 1) + S);
    const size_t num_transformed = emit_transformed_parameters * (0);
    const size_t num_gen_quantities = emit_generated_quantities * (0);
    const size_t num_to_write = num_params__ + num_transformed +
      num_gen_quantities;
    std::vector<int> params_i;
    vars = Eigen::Matrix<double,-1,1>::Constant(num_to_write,
             std::numeric_limits<double>::quiet_NaN());
    write_array_impl(base_rng, params_r, params_i, vars,
      emit_transformed_parameters, emit_generated_quantities, pstream);
  }
  template <typename RNG> inline void
  write_array(RNG& base_rng, std::vector<double>& params_r, std::vector<int>&
              params_i, std::vector<double>& vars, bool
              emit_transformed_parameters = true, bool
              emit_generated_quantities = true, std::ostream*
              pstream = nullptr) const {
    const size_t num_params__ = ((1 + 1) + S);
    const size_t num_transformed = emit_transformed_parameters * (0);
    const size_t num_gen_quantities = emit_generated_quantities * (0);
    const size_t num_to_write = num_params__ + num_transformed +
      num_gen_quantities;
    vars = std::vector<double>(num_to_write,
             std::numeric_limits<double>::quiet_NaN());
    write_array_impl(base_rng, params_r, params_i, vars,
      emit_transformed_parameters, emit_generated_quantities, pstream);
  }
  template <bool propto__, bool jacobian__, typename T_> inline T_
  log_prob(Eigen::Matrix<T_,-1,1>& params_r, std::ostream* pstream = nullptr) const {
    Eigen::Matrix<int,-1,1> params_i;
    return log_prob_impl<propto__, jacobian__>(params_r, params_i, pstream);
  }
  template <bool propto__, bool jacobian__, typename T_> inline T_
  log_prob(std::vector<T_>& params_r, std::vector<int>& params_i,
           std::ostream* pstream = nullptr) const {
    return log_prob_impl<propto__, jacobian__>(params_r, params_i, pstream);
  }
  inline void
  transform_inits(const stan::io::var_context& context,
                  Eigen::Matrix<double,-1,1>& params_r, std::ostream*
                  pstream = nullptr) const final {
    std::vector<double> params_r_vec(params_r.size());
    std::vector<int> params_i;
    transform_inits(context, params_i, params_r_vec, pstream);
    params_r = Eigen::Map<Eigen::Matrix<double,-1,1>>(params_r_vec.data(),
                 params_r_vec.size());
  }
  inline void
  transform_inits(const stan::io::var_context& context, std::vector<int>&
                  params_i, std::vector<double>& vars, std::ostream*
                  pstream__ = nullptr) const {
    vars.resize(num_params_r__);
    transform_inits_impl(context, vars, pstream__);
  }
  inline void
  unconstrain_array(const std::vector<double>& params_constrained,
                    std::vector<double>& params_unconstrained, std::ostream*
                    pstream = nullptr) const {
    const std::vector<int> params_i;
    params_unconstrained = std::vector<double>(num_params_r__,
                             std::numeric_limits<double>::quiet_NaN());
    unconstrain_array_impl(params_constrained, params_i,
      params_unconstrained, pstream);
  }
  inline void
  unconstrain_array(const Eigen::Matrix<double,-1,1>& params_constrained,
                    Eigen::Matrix<double,-1,1>& params_unconstrained,
                    std::ostream* pstream = nullptr) const {
    const std::vector<int> params_i;
    params_unconstrained = Eigen::Matrix<double,-1,1>::Constant(num_params_r__,
                             std::numeric_limits<double>::quiet_NaN());
    unconstrain_array_impl(params_constrained, params_i,
      params_unconstrained, pstream);
  }
};
}
using stan_model = model_pp_error_namespace::model_pp_error;
#ifndef USING_R
// Boilerplate
stan::model::model_base&
new_model(stan::io::var_context& data_context, unsigned int seed,
          std::ostream* msg_stream) {
  stan_model* m = new stan_model(data_context, seed, msg_stream);
  return *m;
}
stan::math::profile_map& get_stan_profile_data() {
  return model_pp_error_namespace::profiles__;
}
#endif
#endif
